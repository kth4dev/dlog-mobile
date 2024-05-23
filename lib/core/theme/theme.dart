import 'package:dlog/core/theme/color.dart';
import 'package:dlog/core/theme/resource.dart';
import 'package:dlog/core/theme/text.dart';

DLogThemeData get dLogTheme => DLogThemeData(
      colorScheme: dLogColorScheme,
      textTheme: dLogText,
    );

DLogThemeData appTheme() => dLogTheme;

/*
bool isDarkMode() => true;

DlogThemeData get lightTheme => DlogThemeData(
  colorScheme: dLogColorScheme,
  textTheme: dLogText,
);
*/
