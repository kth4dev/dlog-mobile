part of 'app_theme_cubit.dart';

class AppThemeState {
  final DLogLocale? locale;

  const AppThemeState({this.locale});

  AppThemeState copyWith({DLogLocale? locale}) {
    return AppThemeState(
      locale: locale ?? this.locale,
    );
  }
}

