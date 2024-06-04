import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/profile/presentation/res/menu/settings.dart';
import 'package:dlog/features/profile/presentation/screens/settings/list/views/items/item.dart';
import 'package:flutter/material.dart';

class SettingsMenuListView extends StatelessWidget {
  final Function(SettingsMenu) onSelect;

  const SettingsMenuListView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: SettingsMenu.values.length,
      itemBuilder: (context, index) {
        final menu = SettingsMenu.values[index];
        return SettingsMenuItem(
          label: context.getLocale(menu.label),
          icon: menu.icon,
          onTap: () => onSelect(menu),
        );
      },
    );
  }
}
