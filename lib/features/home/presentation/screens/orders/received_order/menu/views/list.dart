import 'package:dlog/features/home/presentation/res/menu/received_order.dart';
import 'package:flutter/material.dart';

import 'items/menu_item.dart';


class ReceivedOrderMenuListView extends StatelessWidget {
  final Function(ReceivedOrderMenu) onSelect;

  const ReceivedOrderMenuListView({super.key, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: ReceivedOrderMenu.values.length,
        itemBuilder: (context, index) {
          final currentItem = ReceivedOrderMenu.values[index];
          return ArrivedOrderMenuItem(
            onTap: () => onSelect(currentItem),
            label:currentItem.label,
          );
        },
      ),
    );
  }
}