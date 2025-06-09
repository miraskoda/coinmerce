import 'package:coinmerce/core/app_bloc/app_bloc.dart';
import 'package:coinmerce/core/app_bloc/ui_status.dart';
import 'package:coinmerce/core/injector/injector.dart';
import 'package:coinmerce/core/router/app_router.dart';
import 'package:coinmerce/core/theme/app_theme.dart';
import 'package:coinmerce/generated/l10n.dart';
import 'package:coinmerce/ui/others/primary_padding.dart';
import 'package:coinmerce/ui/splash/presentation/splash_screen.dart';
import 'package:device_frame_plus/device_frame_plus.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final AppBloc _appBloc;

  @override
  void initState() {
    _appBloc = Injector.instance<AppBloc>()..add(const AppEvent.loaded());

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: BlocProvider<AppBloc>.value(
        value: _appBloc,
        child: BlocSelector<AppBloc, AppState, UIStatus>(
          bloc: _appBloc,
          selector: (state) => state.status,
          builder: (context, appStatus) {
            return switch (appStatus) {
              UIInitial() => const SplashScreen(),
              UILoading() => const SplashScreen(),
              UILoadFailed(message: _) => const SizedBox(),
              UILoadSuccess(message: _) => const _App(),
            };
          },
        ),
      ),
    );
  }
}

class _App extends StatelessWidget {
  const _App();

  @override
  Widget build(BuildContext context) {
    final String locale = context.select((AppBloc value) => value.state.locale);

    final bool isDarkMode = context.select((AppBloc value) => value.state.isDarkMode);

    final app = MaterialApp.router(
      localizationsDelegates: const [
        AppLocalizationDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        DefaultCupertinoLocalizations.delegate,
      ],
      supportedLocales: const AppLocalizationDelegate().supportedLocales,
      locale: Locale(locale),
      themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      routerConfig: AppRouter.router,
      title: 'Coinmerce',
    );

    if (kIsWeb) {
      return LayoutBuilder(
        builder: (context, size) {
          if (size.maxWidth <= 500) {
            return app;
          }
          return DeviceFrameTheme(
            style: DeviceFrameStyle.dark(),
            child: MaterialApp.router(
              localizationsDelegates: const [
                AppLocalizationDelegate(),
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
                DefaultCupertinoLocalizations.delegate,
              ],
              builder: (context, child) {
                return ColoredBox(
                  color:
                      isDarkMode
                          ? AppTheme.darkTheme.scaffoldBackgroundColor
                          : AppTheme.lightTheme.scaffoldBackgroundColor,
                  child: PrimaryPadding.lg(
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(maxWidth: 430, maxHeight: 932),
                      child: Center(child: DeviceFrame(device: Devices.ios.iPhone12Mini, screen: child ?? Container())),
                    ),
                  ),
                );
              },
              supportedLocales: const AppLocalizationDelegate().supportedLocales,
              locale: Locale(locale),
              themeMode: isDarkMode ? ThemeMode.dark : ThemeMode.light,
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              routerConfig: AppRouter.router,
              title: 'Coinmerce',
            ),
          );
        },
      );
    } else {
      return app;
    }
  }
}
