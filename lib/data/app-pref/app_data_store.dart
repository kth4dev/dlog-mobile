import 'dart:async';
import 'package:dlog/data/models/vo/auth/user_vo.dart';

abstract class AppDataStore {
  Future<void> setFirstTime(bool value);

  bool isFirstTime();

  Future<void> setLoggedIn(bool value);

  bool isLoggedIn();

  Future<void> setLocale(int value);

  int getLocale();

  String getToken();

  UserVo getUser();
}
