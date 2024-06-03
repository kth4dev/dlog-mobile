import 'package:dlog/core/images/icons/icons.dart';

enum DLogLocale {
  myanmar(
    name: "my",
    value: 1,
    label: "Myanmar",
    icon: "assets/images/icons/language/language-square.svg",
  ),
  english(
    name: "en",
    value: 0,
    label: "English",
    icon: "assets/images/icons/language/language-square.svg",
  ),
  china(
    name: "zh_CN",
    value: 2,
    label: "Chinese",
    icon: "assets/images/icons/language/language-square.svg",
  );

  final String name, label, icon;
  final int value;

  const DLogLocale({
    required this.name,
    required this.value,
    required this.label,
    required this.icon,
  });

  factory DLogLocale.fromValue(int value) {
    switch (value) {
      case 0:
        return DLogLocale.english;
      case 1:
        return DLogLocale.myanmar;
      case 2:
        return DLogLocale.china;
      default:
        throw ArgumentError('Invalid value for AppLocale');
    }
  }
}
