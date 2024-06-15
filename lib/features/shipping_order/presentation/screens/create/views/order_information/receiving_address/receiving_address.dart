import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class ReceivingAddressView extends StatelessWidget {
  const ReceivingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogOutLinedTextField(
        hintText: context.getLocale(ShippingOrderLocale.enterReceivingAddress),
        label: "${context.getLocale(ShippingOrderLocale.receivingAddress)}*",
        textInputType: TextInputType.text);
  }
}
