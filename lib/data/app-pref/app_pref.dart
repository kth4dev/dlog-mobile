import 'package:shared_preferences/shared_preferences.dart';

class AppPref {
  SharedPreferences pref;

  AppPref({required this.pref});

  dynamic getData({required String key}) {
    return pref.get(key);
  }

  Future<bool> saveData({
    required String key,
    required dynamic value,
  }) async {
    switch (value) {
      case int _:
        return await pref.setInt(key, value);
      case double _:
        return await pref.setDouble(key, value);
      case bool _:
        return await pref.setBool(key, value);
      case List<String> _:
        return await pref.setStringList(key, value);
      default:
        return await pref.setString(key, value);
    }
  }

  Future<void> removeData({required String key}) async {
    await pref.remove(key);
  }

  Future<void> removeAllData() async {
    await pref.clear();
  }

  //-----------------------------------------
  // Pref Keys
  //-----------------------------------------
  static const String keyFirstTime="app.firstTime";
  static const String keyAuthenticated="app.firstTime";
  static const String keyLocale="app.locale";
}
