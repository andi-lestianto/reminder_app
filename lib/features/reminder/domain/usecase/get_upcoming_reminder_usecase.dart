import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';

@lazySingleton
class GetUpcomingReminderUsecase {
  ReminderEntity? call(List<ReminderEntity> reminders) {
    try {
      final now = DateTime.now();
      final upcomingReminders = reminders
          .where((reminder) => reminder.dateTime.isAfter(now))
          .toList();

      if (upcomingReminders.isNotEmpty) {
        upcomingReminders.sort((a, b) => a.dateTime.compareTo(b.dateTime));
        return upcomingReminders.first;
      }
    } catch (e) {
      log('Error in GetUpcomingReminderUsecase: $e');
    }

    return null;
  }
}
