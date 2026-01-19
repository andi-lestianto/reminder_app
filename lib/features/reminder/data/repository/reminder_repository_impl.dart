import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/error/extension/exception_extension.dart';
import 'package:reminder_app/core/error/failures.dart';
import 'package:reminder_app/features/reminder/data/datasource/local/reminder_local_datasource.dart';
import 'package:reminder_app/features/reminder/domain/entity/reminder_entity.dart';
import 'package:reminder_app/features/reminder/domain/repository/reminder_repository.dart';

@LazySingleton(as: ReminderRepository)
class ReminderRepositoryImpl implements ReminderRepository {
  final ReminderLocalDatasource localDatasource;

  ReminderRepositoryImpl(this.localDatasource);
  @override
  TaskEither<Failure, int> createReminder(ReminderEntity reminder) {
    return localDatasource
        .createReminder(reminder.toModel())
        .mapLeft((exception) => exception.toFailure);
  }

  @override
  TaskEither<Failure, List<ReminderEntity>> getReminders(DateTime date) {
    return localDatasource
        .getReminders(date)
        .mapLeft((exception) => exception.toFailure)
        .map(
          (reminderModels) =>
              reminderModels.map((model) => model.toEntity()).toList(),
        );
  }

  @override
  TaskEither<Failure, int> deleteReminder(int id) {
    return localDatasource
        .deleteReminder(id)
        .mapLeft((exception) => exception.toFailure);
  }

  @override
  TaskEither<Failure, int> updateReminder(ReminderEntity reminder) {
    return localDatasource
        .updateReminder(reminder.toModel())
        .mapLeft((exception) => exception.toFailure);
  }
}
