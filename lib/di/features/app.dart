import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/data/repository/app_repo_impl.dart';
import 'package:dlog/features/app/domain/repository/app_repo.dart';
import 'package:dlog/features/app/domain/usecase/save_locale.dart';
import 'package:dlog/features/app/presentation/bloc/theme/app_theme_bloc.dart';

Future<void> provideApp() async {
  /// ******************************************
  ///  Title : Repository
  /// ******************************************
  sl.registerSingleton<AppRepository>(AppRepositoryImpl(
    appLocalizationManager: sl(),
  ));

  /// ******************************************
  ///  Title : UseCase
  /// ******************************************
  sl.registerFactory(() => SaveLocaleUseCase(appRepo: sl()));

  /// ******************************************
  ///  Title : Blocs
  /// ******************************************
  sl.registerFactory(() => AppThemeBloc(saveLocale: sl()));
}
