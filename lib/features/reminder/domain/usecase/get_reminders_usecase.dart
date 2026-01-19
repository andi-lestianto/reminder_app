import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/error/failures.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/domain/repository/reminder_repository.dart';

@lazySingleton
class GetRemindersUsecase {
  final ReminderRepository repository;

  GetRemindersUsecase(this.repository);

  TaskEither<Failure, List<ReminderEntity>> call(DateTime date) {
    return repository.getReminders(date);
  }
}
