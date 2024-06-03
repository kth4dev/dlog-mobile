import 'package:dlog/features/main/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';

class AppLocalization {
  static const Map<String, dynamic> en = {
    ...MainLocale.en,
    ...ProfileLocale.en,
  };
  static const Map<String, dynamic> zh = {
    ...MainLocale.zh,
    ...ProfileLocale.zh,
  };
  static const Map<String, dynamic> my = {
    ...MainLocale.my,
    ...ProfileLocale.my,
  };
}
