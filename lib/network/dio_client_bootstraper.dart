// ignore_for_file: avoid_classes_with_only_static_members

import 'package:dio/dio.dart';
import '../../common/utils/load_credentials.dart';
import 'remove_data_from_get_request_interceptor.dart';

abstract class DioClienBootstraper {
  static Future<Dio> inializeDioClient() async {
    final credentials = await loadCredentials();
    final dioClient = Dio(BaseOptions(baseUrl: credentials.apiDomain))
      ..interceptors.add(RemoveDataFromGetRequestInterceptor());
    return dioClient;
  }
}
