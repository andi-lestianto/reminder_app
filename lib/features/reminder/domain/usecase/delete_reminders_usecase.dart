import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/error/failures.dart';
import 'package:reminder_app/features/reminder/domain/repository/reminder_repository.dart';

@lazySingleton
class DeleteRemindersUsecase {
  final ReminderRepository repository;

  DeleteRemindersUsecase(this.repository);

  TaskEither<Failure, int> call(int id) {
    return repository.deleteReminder(id);
  }
}
