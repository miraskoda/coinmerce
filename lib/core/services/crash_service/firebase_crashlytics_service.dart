import 'package:coinmerce/core/services/crash_service/crash_service.dart';
import 'package:sentry_flutter/sentry_flutter.dart';

class SentryCrashService implements CrashService {
  @override
  Future<void> init() async {
    await SentryFlutter.init((options) {
      options
        ..dsn = 'https://ad414314c03fb877870dcd83db9d9576@o4504716924026880.ingest.us.sentry.io/4509468311027712'
        ..sendDefaultPii = true;
    });
  }

  @override
  Future<void> recordException(dynamic exception, StackTrace? stackTrace) async {
    await Sentry.captureException(exception, stackTrace: stackTrace);
  }
}
