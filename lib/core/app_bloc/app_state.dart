part of 'app_bloc.dart';

@freezed
sealed class AppState with _$AppState {
  const factory AppState({
    @Default(UIInitial()) UIStatus status,
    @Default(AppConfig.defaultLocale) String locale,
    @Default(true) bool isDarkMode,
  }) = _AppState;
  const AppState._();
}
