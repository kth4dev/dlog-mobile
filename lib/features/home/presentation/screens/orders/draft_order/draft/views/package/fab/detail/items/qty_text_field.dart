import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class DialogQtyTextField extends StatefulWidget {
  const DialogQtyTextField({super.key});

  @override
  State<DialogQtyTextField> createState() => _DialogQtyTextFieldState();
}

class _DialogQtyTextFieldState extends State<DialogQtyTextField> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DLogOutLinedTextField(
                  hintText: context.getLocale(DraftOrderLocale.enterQty),
                  label: context.getLocale(DraftOrderLocale.qtyInCarton),
                  textInputType: TextInputType.number),
              2.spacingHeight,
              DLogText(
                context.getLocale(
                  DraftOrderLocale.max,
                ),
                style: context.getTextTheme.tertiaryMedium,
                color: context.getColorScheme.yellow.normal,
              )
            ],
          ),
        ),
        20.spacingWidth,
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              DLogOutLinedTextField(
                  hintText: context.getLocale(DraftOrderLocale.enterItemCBM),
                  label: "${context.getLocale(DraftOrderLocale.itemCBM)}(%)",
                  textInputType: TextInputType.number),
              2.spacingHeight,
              DLogText(
                context.getLocale(
                  DraftOrderLocale.max,
                ),
                style: context.getTextTheme.tertiaryMedium,
                color: context.getColorScheme.yellow.normal,
              )
            ],
          ),
        ),
      ],
    );
  }
}
