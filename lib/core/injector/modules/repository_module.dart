import 'package:coinmerce/core/injector/injector.dart';
import 'package:coinmerce/data/repositories/coin_repository_impl.dart';
import 'package:coinmerce/domain/client/api_client.dart';
import 'package:coinmerce/domain/repository/api_repository.dart';

class RepositoryModule {
  RepositoryModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<ApiClient>(() => ApiClient(injector()))
      ..registerLazySingleton<ApiRepository>(() => ApiRepositoryImpl(injector()));
  }
}
