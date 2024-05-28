import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'item.dart';

class DLogBottomNavigationBar extends StatelessWidget {
  final List<DLogBottomNavItemData> items;
  final int currentIndex;
  final Function(int) onTap;

  const DLogBottomNavigationBar({
    super.key,
    required this.items,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      color: context.getColorScheme.black.dark,
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: items.map((e) {
          final index = items.indexOf(e);
          final isSelected = index == currentIndex;
          return DLogBottomNavigationItem(
            data: e,
            isSelected: isSelected,
            onTap: () => onTap(index),
          );
        }).toList(),
      ),
    );
  }
}
