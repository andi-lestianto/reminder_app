import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/database/app_database.dart';
import 'package:reminder_app/features/reminder/data/model/reminder_model.dart';

abstract class ReminderLocalDatasource {
  TaskEither<Exception, int> createReminder(ReminderModel reminder);
  TaskEither<Exception, List<ReminderModel>> getReminders();
}

@LazySingleton(as: ReminderLocalDatasource)
class ReminderLocalDatasourceImpl implements ReminderLocalDatasource {
  final AppDatabase db;

  ReminderLocalDatasourceImpl(this.db);
  @override
  TaskEither<Exception, int> createReminder(ReminderModel reminder) {
    return TaskEither.tryCatch(
      () async {
        final database = await db.database;

        final id = await database.insert(
          'reminders',
          reminder.toJson(),
          conflictAlgorithm: .replace,
        );
        if (id > 0) {
          log('Reminder inserted with id: $id');
        }
        return id;
      },
      (error, stackTrace) {
        log('Error inserting reminder: $error', stackTrace: stackTrace);
        return Exception('Database Insertion Error: $error');
      },
    );
  }

  @override
  TaskEither<Exception, List<ReminderModel>> getReminders() {
    return TaskEither.tryCatch(
      () async {
        final database = await db.database;
        final List<Map<String, dynamic>> maps = await database.query(
          'reminders',
          orderBy: 'dateTimeEpoch ASC',
        );

        return maps.map((e) => ReminderModel.fromJson(e)).toList();
      },
      (error, stackTrace) {
        log('Error fetching reminders: $error', stackTrace: stackTrace);
        return Exception('Database Fetch Error: $error');
      },
    );
  }
}
