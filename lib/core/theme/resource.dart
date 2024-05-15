import 'package:flutter/material.dart';

class DlogThemeData {
  final DLogColorScheme colorScheme;
  final DLogTextTheme textTheme;

  const DlogThemeData({
    required this.colorScheme,
    required this.textTheme,
  });
}

class DLogColorScheme {
  final DLogColorSwatches grey, black, yellow;
  final Color whiteColor, blackColor, successColor, errorColor, pendingColor;

  const DLogColorScheme({
    required this.grey,
    required this.black,
    required this.yellow,
    required this.whiteColor,
    required this.blackColor,
    required this.successColor,
    required this.errorColor,
    required this.pendingColor,
  });
}

class DLogColorSwatches {
  final Color light;
  final Color lightHover;
  final Color lightActive;
  final Color normal;
  final Color normalHover;
  final Color normalActive;
  final Color dark;
  final Color darkHover;
  final Color darkActive;
  final Color darker;

  const DLogColorSwatches({
    required this.light,
    required this.lightHover,
    required this.lightActive,
    required this.normal,
    required this.normalHover,
    required this.normalActive,
    required this.dark,
    required this.darkHover,
    required this.darkActive,
    required this.darker,
  });
}

class DLogTextTheme {
  final TextStyle bodyRegular;
  final TextStyle bodyMedium;
  final TextStyle bodyBold;
  final TextStyle secondaryRegular;
  final TextStyle secondaryMedium;
  final TextStyle secondaryBold;
  final TextStyle tertiaryRegular;
  final TextStyle tertiaryMedium;
  final TextStyle tertiaryBold;
  final TextStyle smallRegular;
  final TextStyle smallMedium;
  final TextStyle smallBold;
  final TextStyle headerRegular;
  final TextStyle headerMedium;
  final TextStyle headerBold;
  final TextStyle secondHeaderRegular;
  final TextStyle secondHeaderMedium;
  final TextStyle secondHeaderBold;
  final TextStyle tertiaryHeaderRegular;
  final TextStyle tertiaryHeaderMedium;
  final TextStyle tertiaryHeaderBold;

  const DLogTextTheme({
    required this.bodyRegular,
    required this.bodyMedium,
    required this.bodyBold,
    required this.secondaryRegular,
    required this.secondaryMedium,
    required this.secondaryBold,
    required this.tertiaryRegular,
    required this.tertiaryMedium,
    required this.tertiaryBold,
    required this.smallRegular,
    required this.smallMedium,
    required this.smallBold,
    required this.headerRegular,
    required this.headerMedium,
    required this.headerBold,
    required this.secondHeaderRegular,
    required this.secondHeaderMedium,
    required this.secondHeaderBold,
    required this.tertiaryHeaderRegular,
    required this.tertiaryHeaderMedium,
    required this.tertiaryHeaderBold,
  });
}
