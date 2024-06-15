import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
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
            hintText: context.getLocale(DraftOrderLocale.enterEstimatePrice),
            label: context.getLocale(DraftOrderLocale.estimatePrice),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.enterOrderQty),
            label: context.getLocale(DraftOrderLocale.orderQty),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.enterRemark),
            label: context.getLocale(DraftOrderLocale.remark),
            textInputType: TextInputType.text),
      ],
    );
  }
}
