import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/locale.dart';
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
          context.getLocale(HomeLocale.orderManagement),
          style: context.getTextTheme.secondHeaderBold,
          color: context.getColorScheme.blackColor,
        ),
        20.spacingHeight,
        Row(
          children: [
             OrderManagementItem(
                icon: DLogIcons.document, text:context.getLocale(HomeLocale.confirmOrder), qty: "4",onTap: (){},),
            22.spacingWidth,
             OrderManagementItem(
                icon: DLogIcons.document1, text:context.getLocale(HomeLocale.orderDraft), qty: "4",onTap: (){}),
          ],
        ),
        18.spacingHeight,
        Row(
          children: [
             OrderManagementItem(
                icon: DLogIcons.documentHistory,
                text: context.getLocale(HomeLocale.receivedOrder),
                qty: "3",onTap: (){}),
            22.spacingWidth,
             OrderManagementItem(
                icon: DLogIcons.delivery, text: context.getLocale(HomeLocale.arrivedOrder), qty: "4",onTap: (){}),
          ],
        ),
        18.spacingHeight,
        Row(
          children: [
             OrderManagementItem(
                icon: DLogIcons.delivery, text: context.getLocale(HomeLocale.delivery), qty: "3",onTap: (){}),
            22.spacingWidth,
             OrderManagementItem(
                icon: DLogIcons.document1,
                text:context.getLocale(HomeLocale.inTransitOrder),
                qty: "4",onTap: (){}),
          ],
        ),
        18.spacingHeight,
      ],
    );
  }

}
