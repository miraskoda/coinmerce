import 'package:coinmerce/core/router/app_router.dart';
import 'package:coinmerce/generated/assets.gen.dart';
import 'package:coinmerce/presentation/splash/application/splash_screen_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashScreenBloc()..add(const Start()),
      child: BlocListener<SplashScreenBloc, SplashScreenState>(
        listener: (context, state) {
          if (state is MainPage) {
            context.go(AppRouter.mainPath);
          }
        },
        child: Scaffold(body: Center(child: Assets.images.logo.image(color: Theme.of(context).colorScheme.onSurface))),
      ),
    );
  }
}
