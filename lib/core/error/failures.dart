abstract class Failure {
  final String message;
  const Failure(this.message);
}

class NetworkFailure extends Failure {
  const NetworkFailure() : super('No internet connection');
}

class TimeoutFailure extends Failure {
  const TimeoutFailure() : super('Connection timeout');
}

class ServerFailure extends Failure {
  const ServerFailure(super.message);
}

class UnauthorizedFailure extends Failure {
  const UnauthorizedFailure() : super('Please login again');
}

class UnknownFailure extends Failure {
  const UnknownFailure() : super('Something went wrong');
}
