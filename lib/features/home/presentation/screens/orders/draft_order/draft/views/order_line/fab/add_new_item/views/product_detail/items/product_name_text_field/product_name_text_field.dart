import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

class ProductNameTextField extends StatelessWidget {
  const ProductNameTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogOutLinedTextField(
          hintText: context.getLocale(DraftOrderLocale.itemName),
          label: context.getLocale(DraftOrderLocale.productNameOfEnglish),
          textInputType: TextInputType.text,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          hintText: context.getLocale(DraftOrderLocale.itemName),
          label: context.getLocale(DraftOrderLocale.productNameOfChinese),
          textInputType: TextInputType.text,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          hintText: context.getLocale(DraftOrderLocale.itemName),
          label: context.getLocale(DraftOrderLocale.productNameOfMyanmar),
          textInputType: TextInputType.text,
        ),
      ],
    );
  }
}
