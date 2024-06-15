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
            hintText: context.getLocale(ShippingOrderLocale.enterUserName),
            label: context.getLocale(ShippingOrderLocale.supplierName),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.enterAddress),
            label: context.getLocale(ShippingOrderLocale.address),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.enterCode),
            label: context.getLocale(ShippingOrderLocale.code),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.enterContactPersonName),
            label: context.getLocale(ShippingOrderLocale.contactPersonName),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(ShippingOrderLocale.enterContactPhoneNo),
            label: context.getLocale(ShippingOrderLocale.contactPhoneNo),
            textInputType: TextInputType.number),
      ],
    );
  }
}
