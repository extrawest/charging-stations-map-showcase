import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  final String? message;

  const Failure({
    required this.message,
  });

  @override
  List<Object?> get props => [message];
}

class APIFailure extends Failure {
  const APIFailure({
    required super.message,
  });

  APIFailure.fromDioError(DioError error)
      : super(message: error.message ?? error.error.toString());
}

class GeolocationServiceDisabledFailure extends Failure {
  const GeolocationServiceDisabledFailure()
      : super(message: 'Location services are disabled.');
}

class GeolocationFailure extends Failure {
  const GeolocationFailure({
    required super.message,
  });
}

class AuthenticationFailure extends Failure {
  const AuthenticationFailure({
    required super.message,
  });
}

class LocalStorageFailure extends Failure {
  const LocalStorageFailure({
    required super.message,
  });
}
