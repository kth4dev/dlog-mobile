import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/features/app/domain/usecase/save_locale.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_theme_event.dart';

part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  final SaveLocaleUseCase saveLocale;

  AppThemeBloc({required this.saveLocale}) : super(const AppThemeState()) {
    on<AppThemeEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
    AppThemeEvent event,
    Emitter<AppThemeState> emit,
  ) async {
    switch (event) {
      case OnTranslateEvent _:
        _handleTranslateEvent(emit);
        break;
      case SaveLocaleEvent _:
        _handleSaveLocaleEvent(event.locale, emit);
        break;
    }
  }

  void _handleTranslateEvent(Emitter<AppThemeState> emit) {
    emit(state.onTranslate());
  }

  void _handleSaveLocaleEvent(
    DLogLocale locale,
    Emitter<AppThemeState> emit,
  ) async {
    await saveLocale.call(params: locale);
    emit(state.saveLocale(locale));
  }
}
