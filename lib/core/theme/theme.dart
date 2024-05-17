import 'package:dlog/core/theme/color.dart';
import 'package:dlog/core/theme/resource.dart';
import 'package:dlog/core/theme/text.dart';

DlogThemeData get dLogTheme => DlogThemeData(
      colorScheme: dLogColorScheme,
      textTheme: dLogText,
    );

DlogThemeData get lightTheme => DlogThemeData(
  colorScheme: dLogColorScheme,
  textTheme: dLogText,
);

DlogThemeData appTheme() =>isDarkMode()? dLogTheme: lightTheme;

bool isDarkMode() => true;
/*

CustomThemeData get lightTheme => CustomThemeData(
  colorScheme: lightColorScheme,
  textTheme: textTheme,
);

CustomThemeData get dartTheme=> CustomThemeData(
  colorScheme: darkColorScheme,
  textTheme: textTheme,
);

CustomThemeData AppTheme() => isDarkMode() ? darkTheme : lightTheme;

*/

