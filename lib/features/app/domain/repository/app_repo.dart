import 'package:dlog/data/localization/app_locale.dart';

abstract class AppRepository {
  Future<void> translateLocale(String locale);

  Future<void> saveLocale(int value);

  DLogLocale getLocale();
}
