import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

import 'order_line_item.dart';
import 'qty_text_field.dart';

class DialogAddItem extends StatelessWidget {
  const DialogAddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(DraftOrderLocale.item),
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        5.spacingHeight,
        Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(
              color: context.getColorScheme.black.lightHover
            ),
              borderRadius: BorderRadius.circular(10),
              //color: context.getColorScheme.grey.light,
          ),
          child: Column(
            children: [
              const OrderLineItem(),
              10.spacingHeight,
              const DialogQtyTextField(),
            ],
          ),
        )
      ],
    );
  }
}
