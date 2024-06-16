import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/features/app/domain/usecase/get_locale.dart';
import 'package:dlog/features/app/domain/usecase/save_locale.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'app_theme_event.dart';

part 'app_theme_state.dart';

class AppThemeBloc extends Bloc<AppThemeEvent, AppThemeState> {
  final SaveLocaleUseCase saveLocale;
  final GetLocaleUseCase getLocale;

  AppThemeBloc({required this.saveLocale, required this.getLocale})
      : super(const AppThemeState()) {
    on<AppThemeEvent>(_mapEventToState);
  }

  Future<void> _mapEventToState(
    AppThemeEvent event,
    Emitter<AppThemeState> emit,
  ) async {
    switch (event) {
      case InitLocaleEvent():
        _handleInitLocaleEvent(emit);
        break;
      case OnTranslateEvent _:
        _handleTranslateEvent(emit);
        break;
      case SaveLocaleEvent _:
        _handleSaveLocaleEvent(event.locale, emit);
        break;
    }
  }

  void _handleInitLocaleEvent(Emitter<AppThemeState> emit) async {
    final locale = await getLocale.call();
    emit(state.saveLocale(locale));
  }

  void _handleTranslateEvent(Emitter<AppThemeState> emit) {
    emit(state.onTranslate());
  }

  void _handleSaveLocaleEvent(
    DLogLocale locale,
    Emitter<AppThemeState> emit,
  )  {
    saveLocale.call(params: locale);
    emit(state.saveLocale(locale));
  }
}
