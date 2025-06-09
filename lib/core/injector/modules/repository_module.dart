import 'package:coinmerce/api/client/api_client.dart';
import 'package:coinmerce/api/repository/api_repository.dart';
import 'package:coinmerce/core/injector/injector.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<ApiClient>(() => ApiClient(injector()))
      ..registerLazySingleton<ApiRepository>(() => ApiRepositoryImpl(injector()));
  }
}
