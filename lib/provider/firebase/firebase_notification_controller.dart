// ignore_for_file: constant_identifier_names

import 'package:awesome_notifications/awesome_notifications.dart';
import 'package:eqmonitor/const/notification_channel.dart';
import 'package:eqmonitor/utils/fcm/background_handler.dart';
import 'package:eqmonitor/utils/fcm/foreground_handler.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:logger/logger.dart';
import 'package:permission_handler/permission_handler.dart';

Future<void> initFirebaseCloudMessaging() async {
  final logger = Logger();
  final messaging = FirebaseMessaging.instance;
  // 権限を取得
  final permissionResult = await Permission.notification.request();
  logger.d('通知権限: ${permissionResult.isGranted}');
  // Foreground/Backgroundでイベントを受け取るHandlerを登録
  FirebaseMessaging.onMessage.listen(
    (message) async => firebaseMessagingForegroundHandler(message),
  );
  FirebaseMessaging.onBackgroundMessage(firebaseMessagingBackgroundHandler);

  // Awesome Notificationの初期化
  await AwesomeNotifications().initialize(
    'resource://drawable/icon_monochrome',
    notificationChannels,
    channelGroups: channelGroups,
    debug: kDebugMode,
  );

  // FCM Tokenを取得
  final token = await messaging.getToken();
  if (token != null) {
    logger.d('FCM Token: $token');
  }
  // TopicをSubscribe
  for (final e in Topics.values) {
    await messaging.subscribeToTopic(e.name);
  }
}

enum Topics {
  /// ## 緊急地震速報
  eew,

  /// ## 震度速報
  VXSE51,

  /// ## 震源に関する情報
  VXSE52,

  /// ## 震源・震度に関する情報
  VXSE53,


  /// ## 利用者全員への緊急連絡
  everyone,
}
