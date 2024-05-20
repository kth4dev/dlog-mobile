import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/data/app-pref/app_pref.dart';

class AppDataStoreImpl extends AppDataStore {
  AppPref appPref;

  AppDataStoreImpl({required this.appPref});

  @override
  Future<void> setFirstTime(bool value) async {
    await appPref.saveData(key: AppPref.keyFirstTime, value: value);
  }

  @override
  bool isFirstTime() {
    return appPref.getData(key: AppPref.keyFirstTime) ?? true;
  }

  @override
  Future<void> setLoggedIn(bool value) async {
    await appPref.saveData(key: AppPref.keyAuthenticated, value: value);
  }

  @override
  bool isLoggedIn() {
    return appPref.getData(key: AppPref.keyAuthenticated) ?? false;
  }
}
