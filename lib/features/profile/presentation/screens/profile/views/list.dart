import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/profile/presentation/res/menu/profile.dart';
import 'package:flutter/material.dart';

import 'items/menu_item.dart';

class ProfileMenuListView extends StatelessWidget {
  final Function(ProfileMenu) onSelect;

  const ProfileMenuListView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 24,),
        itemCount: ProfileMenu.values.length,
        itemBuilder: (context, index) {
          final currentItem = ProfileMenu.values[index];
          return ProfileMenuItem(
            onTap: () => onSelect(currentItem),
            label: context.getLocale(currentItem.label),
            icon: currentItem.icon,
          );
        },
      ),
    );
  }
}
