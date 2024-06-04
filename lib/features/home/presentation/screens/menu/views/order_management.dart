import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/screens/menu/views/items/item.dart';
import 'package:flutter/material.dart';

class OrderManagementView extends StatelessWidget {
  const OrderManagementView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Order Management",
          style: context.getTextTheme.secondHeaderBold,
          color: context.getColorScheme.blackColor,
        ),
        20.spacingHeight,
        Row(
          children: [
             OrderManagementItem(
                icon: DLogIcons.document, text: "Confirm Order", qty: "4",onTap: (){},),
            22.spacingWidth,
             OrderManagementItem(
                icon: DLogIcons.document1, text: "Order Draft", qty: "4",onTap: (){}),
          ],
        ),
        18.spacingHeight,
        Row(
          children: [
             OrderManagementItem(
                icon: DLogIcons.documentHistory,
                text: "Received Orders",
                qty: "3",onTap: (){}),
            22.spacingWidth,
             OrderManagementItem(
                icon: DLogIcons.delivery, text: "Arrived Orders", qty: "4",onTap: (){}),
          ],
        ),
        18.spacingHeight,
        Row(
          children: [
             OrderManagementItem(
                icon: DLogIcons.delivery, text: "Delivery", qty: "3",onTap: (){}),
            22.spacingWidth,
             OrderManagementItem(
                icon: DLogIcons.document1,
                text: "In Transit Orders",
                qty: "4",onTap: (){}),
          ],
        ),
        18.spacingHeight,
      ],
    );
  }

}
