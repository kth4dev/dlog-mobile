import 'dart:async';

abstract class AppDataStore {
  Future<void> setFirstTime(bool value);

  bool isFirstTime();

  Future<void> setLoggedIn(bool value);

  bool isLoggedIn();

  Future<void> setLocale(int value);

  int getLocale();
}
