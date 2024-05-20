import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/data/app-pref/app_data_store_impl.dart';
import 'package:dlog/data/app-pref/app_pref.dart';
import 'package:dlog/di/injection_container.dart';
import 'package:logger/logger.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> provideCore() async {
  //---------------------------------------
  // Log
  //---------------------------------------
  sl.registerSingleton(Logger());

  //---------------------------------------
  // storage
  //---------------------------------------
  final sharedPref = await SharedPreferences.getInstance();
  sl.registerSingleton<AppPref>(AppPref(pref: sharedPref));
  sl.registerSingleton<AppDataStore>(AppDataStoreImpl(appPref: sl()));
}
