import 'package:dlog/features/history/presentation/res/locale/locale.dart';
import 'package:dlog/features/main/presentation/res/locale/locale.dart';
import 'package:dlog/features/more/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';

class AppLocalization {
  static const Map<String, dynamic> en = {
    ...MainLocale.en,
    ...ProfileLocale.en,
    ...MoreLocale.en,
    ...HistoryLocale.en
  };
  static const Map<String, dynamic> zh = {
    ...MainLocale.zh,
    ...ProfileLocale.zh,
    ...MoreLocale.zh,
    ...HistoryLocale.zh
  };
  static const Map<String, dynamic> my = {
    ...MainLocale.my,
    ...ProfileLocale.my,
    ...MoreLocale.my,
    ...HistoryLocale.my
  };
}
