part of '../common/di/injector_module.dart';

class _DioClienBootstraper {
  Future<Dio> inializeDioClient() async {
    final credentials = await loadCredentials();
    final dioClient = Dio(BaseOptions(baseUrl: credentials.apiDomain))
      ..interceptors.add(RemoveDataFromGetRequestInterceptor());
    return dioClient;
  }
}
