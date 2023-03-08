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
