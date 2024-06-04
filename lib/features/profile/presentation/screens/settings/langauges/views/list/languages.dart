import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/features/profile/presentation/screens/settings/langauges/Views/list/items/item.dart';
import 'package:flutter/material.dart';

class LanguagesListView extends StatelessWidget {
  final Function(DLogLocale) onSelect;

  const LanguagesListView({
    super.key,
    required this.onSelect,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: DLogLocale.values.length,
        itemBuilder: (context, index) {
          final currentLocale = DLogLocale.values[index];
          return LanguageItem(
            locale: currentLocale,
            onPressed: () => onSelect(currentLocale),
          );
        },
      ),
    );
  }
}
