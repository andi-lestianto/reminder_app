import 'package:fpdart/fpdart.dart';
import 'package:reminder_app/core/error/failures.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';

abstract class ReminderRepository {
  TaskEither<Failure, int> createReminder(ReminderEntity reminder);
  TaskEither<Failure, List<ReminderEntity>> getReminders();
}
