part of 'app_theme_bloc.dart';

class AppThemeState {
  final DLogLocale? locale;

  const AppThemeState({this.locale});

  AppThemeState copyWith({DLogLocale? locale}) {
    return AppThemeState(
      locale: locale ?? this.locale,
    );
  }

  AppThemeState onTranslate() => copyWith();

  AppThemeState saveLocale(DLogLocale locale) => copyWith(locale: locale);
}
