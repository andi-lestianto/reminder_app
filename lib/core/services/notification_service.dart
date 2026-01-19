import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:permission_handler/permission_handler.dart';

class NotificationService {
  static final _plugin = FlutterLocalNotificationsPlugin();

  static Future<void> init() async {
    const android = AndroidInitializationSettings('@mipmap/ic_launcher');

    const initSettings = InitializationSettings(android: android);
    await _plugin.initialize(initSettings);

    final notification = await Permission.notification.status;
    if (!notification.isGranted) {
      await Permission.notification.request();
    }

    const channel = AndroidNotificationChannel(
      'reminder_channel',
      'Reminder Channel',
      description: 'Channel for alarm',
      importance: Importance.max,
      playSound: true,
      enableVibration: true,
    );

    await _plugin
        .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin
        >()
        ?.createNotificationChannel(channel);

    final status = await Permission.scheduleExactAlarm.status;
    if (!status.isGranted) {
      await Permission.scheduleExactAlarm.request();
    }
  }

  static Future<void> showAlarmNotif({
    required String title,
    required String body,
  }) async {
    const androidDetails = AndroidNotificationDetails(
      'reminder_channel',
      'Reminder Channel',
      importance: Importance.max,
      priority: Priority.high,
      playSound: true,
      fullScreenIntent: true,
      enableVibration: true,
    );

    const notifDetails = NotificationDetails(android: androidDetails);

    await _plugin.show(1, title, body, notifDetails);
  }
}
