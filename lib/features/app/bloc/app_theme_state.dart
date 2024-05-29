part of 'app_theme_cubit.dart';

class AppThemeState {
  final Locale? locale;

  const AppThemeState({this.locale});

  AppThemeState copyWith({Locale? locale}) {
    return AppThemeState(
      locale: locale ?? this.locale,
    );
  }
}

