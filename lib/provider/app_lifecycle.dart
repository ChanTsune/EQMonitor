import 'package:eqmonitor/provider/init/talker.dart';
import 'package:eqmonitor/utils/talker_log/log_types.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

/// ref: https://zenn.dev/riscait/books/flutter-riverpod-practical-introduction/viewer/v2-app-lifecycle
final appLifecycleProvider = Provider<AppLifecycleState>((ref) {
  final observer = _AppLifecycleObserver((value) => ref.state = value, ref);

  final binding = WidgetsBinding.instance..addObserver(observer);
  ref.onDispose(() => binding.removeObserver(observer));

  return AppLifecycleState.resumed;
});

class _AppLifecycleObserver extends WidgetsBindingObserver {
  _AppLifecycleObserver(this._didChangeState, this.ref);
  final Ref ref;

  final ValueChanged<AppLifecycleState> _didChangeState;

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    ref.read(talkerProvider).logTyped(AppLifecycleLog(state.name));
    _didChangeState(state);
    super.didChangeAppLifecycleState(state);
  }
}

extension AppLifecycleStateExtension on AppLifecycleState {
  bool get isResumed => this == AppLifecycleState.resumed;
}
