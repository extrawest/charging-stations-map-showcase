import 'package:dio/dio.dart';

class RemoveDataFromGetRequestInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    if (options.method == 'GET') {
      options.data = null;
    }
    handler.next(options);
  }
}
