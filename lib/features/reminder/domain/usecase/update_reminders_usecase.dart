import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/error/failures.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/domain/repository/reminder_repository.dart';

@lazySingleton
class UpdateRemindersUsecase {
  final ReminderRepository repository;

  UpdateRemindersUsecase(this.repository);

  TaskEither<Failure, int> call(ReminderEntity reminder) {
    return repository.updateReminder(reminder);
  }
}
