import 'package:reminder_app/core/database/app_database.dart';
import 'package:reminder_app/features/reminder/data/model/reminder_model.dart';

class ReminderFetcher {
  static final AppDatabase _db = AppDatabase(); // pastikan singleton

  static Future<ReminderModel?> getReminderById(int id) async {
    final database = await _db.database;

    final result = await database.query(
      'reminders',
      where: 'id = ?',
      whereArgs: [id],
    );

    if (result.isNotEmpty) {
      return ReminderModel.fromJson(result.first);
    } else {
      return null;
    }
  }
}
