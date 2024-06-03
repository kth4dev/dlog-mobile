import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/features/profile/presentation/screens/settings/langauges/Views/list/items/item.dart';
import 'package:flutter/material.dart';

class LanguagesView extends StatelessWidget {
  final Function(DLogLocale) onSelected;

  const LanguagesView({
    super.key,
    required this.onSelected,
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
            onPressed: () => onSelected(currentLocale),
          );
        },
      ),
    );
  }
}
