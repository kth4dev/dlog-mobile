import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
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
          DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.length),
            label: context.getLocale(ShippingOrderLocale.length),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.width),
            label: context.getLocale(ShippingOrderLocale.width),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.height),
            label: context.getLocale(ShippingOrderLocale.height),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.cbm),
            label: context.getLocale(ShippingOrderLocale.cbm),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.weight),
            label: context.getLocale(ShippingOrderLocale.weight),
            textInputType: TextInputType.number,
          ),
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
