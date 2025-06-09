import 'package:coinmerce/core/app_config.dart';
import 'package:coinmerce/core/injector/injector.dart';
import 'package:coinmerce/core/interceptors/token_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';

class DioModule {
  DioModule._();

  static final GetIt _injector = Injector.instance;

  static void setup() {
    _setupDio();
  }

  static void _setupDio() {
    /// Dio
    _injector.registerLazySingleton<Dio>(() {
      final Dio dio = Dio(BaseOptions(baseUrl: AppConfig.coinGeckoBaseUrl));
      if (!kReleaseMode) {
        dio.interceptors.add(TokenInterceptor(dio));
      }
      return dio;
    });
  }
}
