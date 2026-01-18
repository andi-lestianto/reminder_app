abstract class AppException implements Exception {
  final String message;
  final int? statusCode;

  const AppException(this.message, [this.statusCode]);
}

class NetworkException extends AppException {
  const NetworkException() : super('No internet connection');
}

class TimeoutException extends AppException {
  const TimeoutException() : super('Connection timeout');
}

class ServerException extends AppException {
  const ServerException(super.message, [super.statusCode]);
}

class UnauthorizedException extends AppException {
  const UnauthorizedException()
    : super('Unauthorized, please login again', 401);
}

class UnknownException extends AppException {
  const UnknownException() : super('Unexpected error occurred');
}

class DatabaseException extends AppException {
  const DatabaseException(super.message);
}
