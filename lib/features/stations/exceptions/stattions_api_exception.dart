import 'package:flutter_bloc_project_starter/network/exception.dart';

class StationsAPIException extends APIException {
  StationsAPIException(String? message)
      : super(
          message,
          'Stations API Exception: ',
        );
}
