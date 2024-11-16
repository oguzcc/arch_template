import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class LocalNotificationHandler {
  factory LocalNotificationHandler.instance() =>
      _instance ??= LocalNotificationHandler._init();
  LocalNotificationHandler._init() {
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    if (Platform.isIOS) {
      flutterLocalNotificationsPlugin!
          .resolvePlatformSpecificImplementation<
              IOSFlutterLocalNotificationsPlugin>()
          ?.requestPermissions(
            alert: true,
            badge: true,
            sound: true,
          );
    }
    _initializeOtherPlatform();
  }
  late final FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;
  int notificationId = 0;
  static LocalNotificationHandler? _instance;

  Future<void> _initializeOtherPlatform() async {
    final flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    final initializationSettingsDarwin = DarwinInitializationSettings(
      onDidReceiveLocalNotification: _onDidReceiveLocalNotification,
    );
    final initializationSettings = InitializationSettings(
      android: const AndroidInitializationSettings('app_icon'),
      iOS: initializationSettingsDarwin,
    );
    await flutterLocalNotificationsPlugin.initialize(
      initializationSettings,
      onDidReceiveNotificationResponse: _onTapNotification,
    );
  }

  Future<void> _onTapNotification(dynamic payload) async {
    debugPrint('selectNotification payload: $payload');
  }

  Future<void> _onDidReceiveLocalNotification(
    int id,
    String? title,
    String? body,
    String? payload,
  ) async {
    debugPrint('onDidReceiveLocalNotification payload: $payload');
  }

  Future<void> showNotification({required String title, String? body}) async {
    notificationId++;
    await flutterLocalNotificationsPlugin!.show(
      notificationId,
      title,
      body,
      const NotificationDetails(
        android: AndroidNotificationDetails(
          'general',
          'General',
          channelDescription: 'General',
          importance: Importance.max,
          priority: Priority.high,
          ticker: 'ticker',
          visibility: NotificationVisibility.public,
        ),
        iOS: DarwinNotificationDetails(
          presentAlert: true,
          presentBadge: true,
          presentSound: true,
          interruptionLevel: InterruptionLevel.active,
          sound: 'default',
        ),
      ),
      payload: 'item $notificationId',
    );
  }
}
