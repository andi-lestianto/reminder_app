import 'package:fpdart/fpdart.dart';
import 'package:injectable/injectable.dart';
import 'package:reminder_app/core/error/failures.dart';

@lazySingleton
class GetWeekDatesUsecase {
  Either<Failure, List<DateTime>> call() {
    try {
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);
      final startOfWeek = today.subtract(Duration(days: today.weekday));
      final weekDates = List<DateTime>.generate(
        7,
        (index) => startOfWeek.add(Duration(days: index)),
      );
      return Right(weekDates);
    } catch (e) {
      return Left(UnknownFailure());
    }
  }
}
