import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shippment_order/presentation/screens/list/view/items/tracking.dart';
import 'package:flutter/material.dart';

import 'circle_icon_image.dart';

class ShippmentOrderItem extends StatelessWidget {
  const ShippmentOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: _screenPadding,
      decoration: BoxDecoration(
          color: context.getColorScheme.yellow.light,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          )),
      child: Row(
        children: [
          CircleIconImage(img: DLogIcons.documents.document),
          32.spacingWidth,
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               DLogText("Name of shipping Order",style: context.getTextTheme.secondaryBold,color: context.getColorScheme.black.normal,),
              10.spacingHeight,
              DLogText("Order no : 123",style: context.getTextTheme.secondaryRegular,color: context.getColorScheme.black.normal,),
              10.spacingHeight,
              DLogText("Date: 10 Apr, 2024",style: context.getTextTheme.secondaryRegular,color: context.getColorScheme.black.normal,),
              10.spacingHeight,
              DLogText("Shippping mark : 232",style: context.getTextTheme.secondaryRegular,color: context.getColorScheme.black.normal,),
              10.spacingHeight,
                    Row(
                      children: [
                        DLogText("Yangon", style: context.getTextTheme.secondaryMedium,color: context.getColorScheme.blackColor,),
                        4.spacingWidth,
                        const Tracking(),
                        4.spacingWidth,
                        DLogText("Mandalay", style: context.getTextTheme.secondaryMedium,color: context.getColorScheme.blackColor,),
                      ],
                    )
            ],
          ))
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding =>
      const EdgeInsets.symmetric(horizontal: 20, vertical: 25);
}
