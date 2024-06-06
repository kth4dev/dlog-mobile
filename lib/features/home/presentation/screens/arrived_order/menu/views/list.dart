import 'package:dlog/features/home/presentation/res/menu/arrived_order.dart';
import 'package:flutter/material.dart';

import 'items/menu_item.dart';


class ArrivedOrderMenuListView extends StatelessWidget {
  final Function(ArrivedOrderMenu) onSelect;

  const ArrivedOrderMenuListView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: ArrivedOrderMenu.values.length,
        itemBuilder: (context, index) {
          final currentItem = ArrivedOrderMenu.values[index];
          return ArrivedOrderMenuItem(
            onTap: () => onSelect(currentItem),
            label:currentItem.label,
          );
        },
      ),
    );
  }
}
