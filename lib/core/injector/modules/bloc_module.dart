import 'package:coinmerce/core/app_bloc/app_bloc.dart';
import 'package:coinmerce/core/injector/injector.dart';
import 'package:coinmerce/ui/main/home/infrastructure/coin_bloc/coin_bloc.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector
      ..registerLazySingleton<AppBloc>(() => AppBloc(appService: injector(), logService: injector()))
      ..registerFactory<CoinBloc>(() => CoinBloc(apiRepository: injector()));
  }
}
