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
            hintText: context.getLocale(DraftOrderLocale.enterUserName),
            label: context.getLocale(DraftOrderLocale.supplierName),
            textInputType: TextInputType.text),
        10.spacingHeight,
         DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.enterAddress),
            label: context.getLocale(DraftOrderLocale.address),
            textInputType: TextInputType.text),
        10.spacingHeight,
         DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.enterCode),
            label: context.getLocale(DraftOrderLocale.code),
            textInputType: TextInputType.text),
        10.spacingHeight,
         DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.enterContactPersonName),
            label: context.getLocale(DraftOrderLocale.contactPersonName),
            textInputType: TextInputType.text),
        10.spacingHeight,
         DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.enterContactPhoneNo),
            label: context.getLocale(DraftOrderLocale.contactPhoneNo),
            textInputType: TextInputType.number),
      ],
    );
  }
}
