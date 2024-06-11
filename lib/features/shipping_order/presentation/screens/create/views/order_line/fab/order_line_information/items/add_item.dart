import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/fab/select_item_or_add_new_item/dialog.dart';
import 'package:flutter/material.dart';

class DialogAddItem extends StatelessWidget {
  const DialogAddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(ShippingOrderLocale.item),
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        5.spacingHeight,
        InkWell(
          onTap: (){
            showSelectItemOrAddNewItem(context: context);
          },
          child: Container(
            padding: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: context.getColorScheme.grey.lightHover
            ),
          child: Icon(
            Icons.add,
            color: context.getColorScheme.grey.normalHover,
            size: 24,
          ),
          ),
        )
      ],
    );
  }
}