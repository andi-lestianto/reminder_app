import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/error/failures.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/domain/repository/reminder_repository.dart';

@LazySingleton(as: ReminderRepository)
class ReminderRepositoryImpl implements ReminderRepository {
  @override
  TaskEither<Failure, List<ReminderEntity>> getReminders() {
    // Implementation goes here
    return TaskEither.tryCatch(
      () async {
        await Future.delayed(const Duration(seconds: 2));
        return ReminderEntity.sampleReminders;
      },
      (failure, stackTrace) {
        return UnknownFailure();
      },
    );
  }
}
