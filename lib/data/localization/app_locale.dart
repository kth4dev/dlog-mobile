enum DLogLocale {
  english(name: "en", value: 0),
  myanmar(name: "my", value: 1),
  china(name: "zh_CN", value: 2);

  final String name;
  final int value;

  const DLogLocale({
    required this.name,
    required this.value,
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
