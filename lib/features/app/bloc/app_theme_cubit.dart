import 'dart:ui';

import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/data/localization/app_localization_manager.dart';
import 'package:dlog/di/injection_container.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_theme_state.dart';

//todo : cubit to bloc
class AppThemeCubit extends Cubit<AppThemeState> {
  AppThemeCubit() : super(const AppThemeState(locale: DLogLocale.english));

  void onTranslate(Locale? locale) {
    emit(state.copyWith());
  }

  void saveLocale(DLogLocale locale) async {
    emit(state.copyWith(locale: locale));
    await sl<AppLocalizationManager>().translate(locale.name);
  }
}
