import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:dlog/core/log/app_log.dart';

class AppBlocObserver extends BlocObserver {
  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    super.onError(bloc, error, stackTrace);
    AppLogs.trace('onEvent $error');
  }

  @override
  void onTransition(Bloc bloc, Transition transition) {
    super.onTransition(bloc, transition);
    AppLogs.trace('onEvent ${transition.nextState.toString()}');
  }

  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    AppLogs.trace('onEvent $change');
  }
}