import 'dart:async';

import 'package:coinmerce/app.dart';
import 'package:coinmerce/core/injector/injector.dart';
import 'package:flutter/material.dart';
import 'package:logger/logger.dart';

Future<void> main() async {
  await runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // ignore: deprecated_member_use
      Logger.level = Level.verbose;

      Injector.init();

      await Injector.instance.allReady();

      runApp(const App());
    },
    (error, stack) {
      // TO-DO: handle error to crash service
    },
  );
}
