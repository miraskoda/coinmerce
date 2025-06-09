import 'package:coinmerce/core/app_bloc/app_bloc.dart';
import 'package:coinmerce/core/injector/injector.dart';

class BlocModule {
  BlocModule._();

  static void init() {
    final injector = Injector.instance;

    injector.registerLazySingleton<AppBloc>(() => AppBloc(appService: injector(), logService: injector()));
  }
}
