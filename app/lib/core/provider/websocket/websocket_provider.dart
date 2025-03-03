import 'dart:async';
import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:ui';

import 'package:eqapi_types/model/v1/v1_database.dart';
import 'package:eqapi_types/model/v1/websocket/realtime_postgres_changes_payload.dart';
import 'package:eqmonitor/core/provider/app_lifecycle.dart';
import 'package:eqmonitor/core/provider/log/talker.dart';
import 'package:eqmonitor/core/provider/telegram_url/provider/telegram_url_provider.dart';
import 'package:eqmonitor/env/env.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:web_socket_client/web_socket_client.dart';

part 'websocket_provider.g.dart';

@Riverpod(keepAlive: true)
WebSocket websocket(WebsocketRef ref) {
  final apiUrl = ref.watch(telegramUrlProvider.select((v) => v.wsApiUrl));
  final uri = Uri.parse(apiUrl);
  final backoff = BinaryExponentialBackoff(
    initial: const Duration(milliseconds: 100),
    maximumStep: 10,
  );
  final socket = WebSocket(
    uri,
    headers: {
      HttpHeaders.authorizationHeader: Env.apiAuthorization,
    },
    pingInterval: const Duration(seconds: 5),
    backoff: backoff,
  );
  ref
    ..onDispose(() {
      socket.close(1000, 'Connection closed');
    })
    ..listen(appLifeCycleProvider, (_, next) {
      // backgroundになったら接続を閉じる
      if (next == AppLifecycleState.paused) {
        socket.close(1000, 'Connection closed');
        log('WebSocket connection closed');
      }
      if (next == AppLifecycleState.resumed) {
        ref.invalidateSelf();
      }
    });

    log('WebSocket connection created');
  return socket;
}

@Riverpod(keepAlive: true)
class WebsocketStatus extends _$WebsocketStatus {
  @override
  ConnectionState build() {
    final socket = ref.watch(websocketProvider);
    final talker = ref.watch(talkerProvider);
    socket.connection.listen((status) {
      state = status;
      talker.log('WebSocket state: $status');
    });
    return socket.connection.state;
  }
}

@Riverpod(keepAlive: true)
class WebsocketMessages extends _$WebsocketMessages {
  late  StreamController<dynamic> _controller;

  @override
  Stream<Map<String, dynamic>> build() async* {
    final socket = ref.watch(websocketProvider);
    _controller = StreamController<dynamic>();
    ref.onDispose(() {
      _controller.close();
    });
    socket.messages.listen(
      (message) {
        ref.read(talkerProvider).log('WebSocket message: $message');
        final decoded = jsonDecode(message.toString());
        if (decoded is Map<String, dynamic>) {
          _controller.add(decoded);
        }
      },
    );

    await for (final message in _controller.stream) {
      yield message as Map<String, dynamic>;
    }
  }

  void emit(Map<String, dynamic> data) => _controller.add(data);
}

@Riverpod(keepAlive: true)
Stream<RealtimePostgresChangesPayloadBase> websocketParsedMessages(
  WebsocketParsedMessagesRef ref,
) {
  final controller = StreamController<RealtimePostgresChangesPayloadBase>();
  ref
    ..listen(websocketMessagesProvider, (previous, next) {
      final value = next.value;
      if (value != null) {
        controller.add(
          RealtimePostgresChangesPayloadBase.fromJson(value),
        );
      }
    })
    ..onDispose(controller.close);
  return controller.stream;
}

@Riverpod(keepAlive: true)
Stream<RealtimePostgresChangesPayloadTable<T>>
    websocketTableMessages<T extends V1Database>(
  WebsocketTableMessagesRef<T> ref,
) {
  final controller = StreamController<RealtimePostgresChangesPayloadTable<T>>();
  ref
    ..listen(websocketParsedMessagesProvider, (previous, next) {
      final value = next.value;
      if (value == null || next.isLoading) {
        return;
      }
      final _ = switch (value) {
        RealtimePostgresInsertPayload<T>() => controller.add(value),
        RealtimePostgresUpdatePayload<T>() => controller.add(value),
        RealtimePostgresDeletePayload<T>() => controller.add(value),
        _ => null,
      };
    })
    ..onDispose(controller.close);
  return controller.stream;
}
