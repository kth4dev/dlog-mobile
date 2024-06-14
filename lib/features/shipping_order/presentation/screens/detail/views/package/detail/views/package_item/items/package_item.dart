import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'order_line.dart';
import 'qty_text_field.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
          border: Border.all(
            color: context.getColorScheme.black.lightHover,
          ),
          borderRadius: BorderRadius.circular(10),
          color: context.getColorScheme.grey.light),
      child: Column(
        children: [
          const OrderLineItem(),
          10.spacingHeight,
          const QtyTextField(),
        ],
      ),
    );
  }
}
