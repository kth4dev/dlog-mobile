import 'package:flutter_localization/flutter_localization.dart';

class AppLocalizationManager {
  final FlutterLocalization localization;

  AppLocalizationManager(this.localization);

  Future<void> translate(String locale) async {
    localization.translate(locale);
  }
}
