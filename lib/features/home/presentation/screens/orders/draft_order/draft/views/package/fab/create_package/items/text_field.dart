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
            hintText: context.getLocale(DraftOrderLocale.enterCartonName),
            label: context.getLocale(DraftOrderLocale.cartonName),
            textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.howManyCarton),
            label: context.getLocale(DraftOrderLocale.howManyCarton),
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.weight),
            label:  "${context.getLocale(DraftOrderLocale.weight)}(kg)",
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.length),
            label: "${context.getLocale(DraftOrderLocale.length)}(cm)",
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.width),
            label:"${context.getLocale(DraftOrderLocale.width)}(cm)",
            textInputType: TextInputType.number),
        10.spacingHeight,
        DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.height),
            label:"${context.getLocale(DraftOrderLocale.height)}(cm)",
            textInputType: TextInputType.number),
        10.spacingHeight,
      ],
    );
  }
}
