import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

class ReceivingAddressView extends StatelessWidget {
  const ReceivingAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogOutLinedTextField(
        hintText: context.getLocale(DraftOrderLocale.enterReceivingAddress),
        label: "${context.getLocale(DraftOrderLocale.receivingAddress)}*",
        textInputType: TextInputType.text);
  }
}
