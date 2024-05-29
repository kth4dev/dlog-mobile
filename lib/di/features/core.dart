import 'package:dlog/core/theme/locale.dart';
import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/data/app-pref/app_data_store_impl.dart';
import 'package:dlog/data/app-pref/app_pref.dart';
import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/data/localization/app_localization_manager.dart';
import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/bloc/app_theme_cubit.dart';
import 'package:flutter_localization/flutter_localization.dart';
import 'package:logger/logger.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> provideCore() async {
  /// ******************************************
  ///  Title : Log
  /// ******************************************
  sl.registerSingleton(Logger());
  sl.registerSingleton(PrettyDioLogger());

  /// ******************************************
  ///  Title : Storage
  /// ******************************************
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerSingleton<AppPref>(AppPref(pref: sharedPref));
  sl.registerSingleton<AppDataStore>(AppDataStoreImpl(appPref: sl()));

  /// ******************************************
  ///  Title : Localization
  /// ******************************************
  FlutterLocalization localization = FlutterLocalization.instance;
  localization.init(
    initLanguageCode: DLogLocale.english.name,
    mapLocales: [
      MapLocale(DLogLocale.english.name, AppLocalization.en),
      MapLocale(DLogLocale.myanmar.name, AppLocalization.my),
      MapLocale(DLogLocale.china.name, AppLocalization.zh),
    ],
  );
  sl.registerSingleton<FlutterLocalization>(localization);
  sl.registerSingleton<AppLocalizationManager>(AppLocalizationManager(sl()));


  /// ******************************************
  ///  Title : Blocs
  /// ******************************************
  sl.registerFactory(() => AppThemeCubit());
}
