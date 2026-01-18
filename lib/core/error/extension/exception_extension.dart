// ignore_for_file: type_literal_in_constant_pattern, constant_pattern_never_matches_value_type

import 'package:reminder_app/core/error/exceptions.dart';
import 'package:reminder_app/core/error/failures.dart';

extension ExceptionExtension on Exception {
  Failure get toFailure {
    switch (this) {
      case NetworkException _:
        return const NetworkFailure();
      case TimeoutException:
        return const TimeoutFailure();
      case UnauthorizedException:
        return const UnauthorizedFailure();
      case ServerException:
        return ServerFailure((this as ServerException).message);
      case DatabaseException:
        return DatabaseFailure((this as DatabaseException).message);
      default:
        return const UnknownFailure();
    }
  }
}
