// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dio/dio.dart';
import 'package:flutter_bloc_project_starter/common/utils/load_credentials.dart';

abstract class DioClienBootstraper {
  static Future<Dio> inializeDioClient() async {
    final credentials = await loadCredentials();
    final dioClient = Dio(BaseOptions(baseUrl: credentials.apiDomain));
    return dioClient;
  }
}
