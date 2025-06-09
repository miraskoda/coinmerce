abstract class CrashService {
  Future<void> init();

  Future<void> recordException(dynamic exception, StackTrace? stack);
}
