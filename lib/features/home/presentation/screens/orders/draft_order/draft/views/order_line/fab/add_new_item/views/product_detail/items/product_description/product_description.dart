import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogOutLinedTextField(
      hintText: context.getLocale(DraftOrderLocale.enterProductDescription),
      label: context.getLocale(DraftOrderLocale.productDescription),
      textInputType: TextInputType.text,
      maxLine: 10,
      height: 100,
    );
  }
}
