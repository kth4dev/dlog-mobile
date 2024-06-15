import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
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
            hintText: context.getLocale(ShippingOrderLocale.enterPackageName),
            label: context.getLocale(ShippingOrderLocale.packageName),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.howManyCarton),
            label: context.getLocale(ShippingOrderLocale.howManyCarton),
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.weight),
            label:  "${context.getLocale(ShippingOrderLocale.weight)}(kg)",
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.length),
            label: "${context.getLocale(ShippingOrderLocale.length)}(cm)",
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.width),
            label:"${context.getLocale(ShippingOrderLocale.width)}(cm)",
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.height),
            label:"${context.getLocale(ShippingOrderLocale.height)}(cm)",
            textInputType: TextInputType.number),
        10.spacingHeight,
      ],
    );
  }
}
