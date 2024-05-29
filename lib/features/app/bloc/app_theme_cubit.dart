import 'dart:ui';

import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_theme_state.dart';

class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(const AppThemeState());

  void onTranslate(Locale? locale) {
    emit(state.copyWith(locale: locale));
  }
}
