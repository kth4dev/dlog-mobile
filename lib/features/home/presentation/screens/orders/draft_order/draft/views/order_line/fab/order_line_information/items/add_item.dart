import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/order_line/fab/select_item_or_add_new_item/dialog.dart';
import 'package:flutter/material.dart';

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
