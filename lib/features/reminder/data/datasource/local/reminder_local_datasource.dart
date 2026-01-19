import 'dart:developer';

import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/database/app_database.dart';
import 'package:reminder_app/features/reminder/data/model/reminder_model.dart';

abstract class ReminderLocalDatasource {
  TaskEither<Exception, int> createReminder(ReminderModel reminder);
  TaskEither<Exception, List<ReminderModel>> getReminders(DateTime date);
  TaskEither<Exception, int> deleteReminder(int id);
  TaskEither<Exception, int> updateReminder(ReminderModel reminder);
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

        final dataMap = reminder.toJson();
        dataMap.remove('id');

        final id = await database.insert(
          'reminders',
          dataMap,
          conflictAlgorithm: .replace,
        );

        log('Reminder inserted with id: $id');
        return id;
      },
      (error, stackTrace) {
        log('Error inserting reminder: $error', stackTrace: stackTrace);
        return Exception('Failed to create new reminder');
      },
    );
  }

  @override
  TaskEither<Exception, List<ReminderModel>> getReminders(DateTime date) {
    return TaskEither.tryCatch(
      () async {
        final startOfDay = DateTime(date.year, date.month, date.day);
        final endOfDay = DateTime(date.year, date.month, date.day, 23, 59, 59);
        final database = await db.database;
        final List<Map<String, dynamic>> maps = await database.query(
          'reminders',
          where: 'dateTimeEpoch >= ? AND dateTimeEpoch <= ?',
          whereArgs: [
            startOfDay.millisecondsSinceEpoch,
            endOfDay.millisecondsSinceEpoch,
          ],
          orderBy: 'dateTimeEpoch ASC',
        );

        return maps.map((e) => ReminderModel.fromJson(e)).toList();
      },
      (error, stackTrace) {
        log('Error fetching reminders: $error', stackTrace: stackTrace);
        return Exception('Failed to fetch reminders');
      },
    );
  }

  @override
  TaskEither<Exception, int> deleteReminder(int id) {
    return TaskEither.tryCatch(
      () async {
        final database = await db.database;
        final rowsAffected = await database.delete(
          'reminders',
          where: 'id = ?',
          whereArgs: [id],
        );
        log('Deleted $rowsAffected reminder(s) with id: $id');
        return rowsAffected;
      },
      (error, stackTrace) {
        log('Error deleting reminder: $error', stackTrace: stackTrace);
        return Exception('Failed to delete reminder');
      },
    );
  }

  @override
  TaskEither<Exception, int> updateReminder(ReminderModel reminder) {
    return TaskEither.tryCatch(
      () async {
        final database = await db.database;
        final rowsAffected = await database.update(
          'reminders',
          reminder.toJson(),
          where: 'id = ?',
          whereArgs: [reminder.id],
        );
        log('Updated $rowsAffected reminder(s) with id: ${reminder.id}');
        return rowsAffected;
      },
      (error, stackTrace) {
        log('Error updating reminder: $error', stackTrace: stackTrace);
        return Exception('Failed to update reminder');
      },
    );
  }
}
