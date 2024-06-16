part of 'app_theme_bloc.dart';

sealed class AppThemeEvent {}

class InitLocaleEvent extends AppThemeEvent {}

class OnTranslateEvent extends AppThemeEvent {}

class SaveLocaleEvent extends AppThemeEvent {
  final DLogLocale locale;

  SaveLocaleEvent({required this.locale});
}
