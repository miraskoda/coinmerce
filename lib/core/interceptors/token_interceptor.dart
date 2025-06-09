import 'package:dio/dio.dart';

class TokenInterceptor extends InterceptorsWrapper {
  TokenInterceptor(this.dio) {
    dio.interceptors.add(this);
  }
  Dio dio;

  @override
  Future<void> onRequest(RequestOptions options, RequestInterceptorHandler handler) async {
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onResponse(Response<dynamic> response, ResponseInterceptorHandler handler) async {
    return super.onResponse(response, handler);
  }

  @override
  Future<void> onError(DioException err, ErrorInterceptorHandler handler) async {
    return super.onError(err, handler);
  }
}
