import 'package:dlog/core/theme/resource.dart';
import 'package:dlog/core/theme/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_localization/flutter_localization.dart';

extension ContextExtension on BuildContext {
  ///localization
  String getLocale(String key) {
    return key.getString(this);
  }

  ///theme
  DLogThemeData get getTheme => appTheme();

  DLogColorScheme get getColorScheme => getTheme.colorScheme;

  DLogTextTheme get getTextTheme => getTheme.textTheme;
}
