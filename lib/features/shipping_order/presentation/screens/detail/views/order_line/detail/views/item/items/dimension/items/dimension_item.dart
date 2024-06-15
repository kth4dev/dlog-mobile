import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/history/presentation/screens/detail/views/items/label_description.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class DimensionItem extends StatelessWidget {
  const DimensionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         LabelDescription(label: context.getLocale(ShippingOrderLocale.length), description: "425"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.width), description: "5"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.height), description: "25"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.cbm), description: "42"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.weight), description: "45"),
        ],
      ),
    );
  }
  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 20,
    top: 10,
  );
}
