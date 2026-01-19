import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:reminder_app/core/database/reminder_fetcher.dart';
import 'package:reminder_app/core/services/notification_service.dart';

@pragma('vm:entry-point')
void alarmCallback(int reminderId) async {
  WidgetsFlutterBinding.ensureInitialized();
  DartPluginRegistrant.ensureInitialized();

  final reminder = await ReminderFetcher.getReminderById(reminderId);
  if (reminder != null) {
    await NotificationService.showAlarmNotif(
      title: reminder.title.toString(),
      body: reminder.note ?? 'You have a reminder!',
    );
  }
}
