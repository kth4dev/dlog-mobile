import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class DialogTextField extends StatefulWidget {
  const DialogTextField({super.key});

  @override
  State<DialogTextField> createState() => _DialogTextFieldState();
}

class _DialogTextFieldState extends State<DialogTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.enterEstimatePrice),
            label: context.getLocale(ShippingOrderLocale.estimatePrice),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.enterOrderQty),
            label: context.getLocale(ShippingOrderLocale.orderQty),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.enterRemark),
            label: context.getLocale(ShippingOrderLocale.remark),
            textInputType: TextInputType.text),
      ],
    );
  }
}
