part of 'app_bloc.dart';

@freezed
class AppEvent with _$AppEvent {
  const factory AppEvent.loaded() = _Loaded;

  const factory AppEvent.localeChanged({required String locale}) = _LocaleChanged;

  const factory AppEvent.darkModeChanged() = _DarkModeChanged;
}
