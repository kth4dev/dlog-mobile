import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class OrderLineItem extends StatelessWidget {
  const OrderLineItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.getColorScheme.grey.light,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DLogAssetImage(
              path: "assets/images/sample/Rectangle 41175.jpg"),
          30.spacingWidth,
          Padding(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width : 80,
                  child: DLogText(
                    "Bottle",
                    style: context.getTextTheme.secondaryBold,
                    color: context.getColorScheme.black.normal,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                5.spacingHeight,
                DLogText(
                  "Item Category",
                  style: context.getTextTheme.tertiaryRegular,
                  color: context.getColorScheme.black.normal,
                ),
                5.spacingHeight,
                DLogText(
                  "10000MMK",
                  style: context.getTextTheme.tertiaryRegular,
                  color: context.getColorScheme.black.normal,
                ),
              ],
            ),
          ),
          const Spacer(),
          _qtyContainer(context),
        ],
      ),
    );
  }

  Widget _qtyContainer(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.getColorScheme.black.light),
        child: Row(
          children: [
            DLogText(
              "Qty:",
              style: context.getTextTheme.smallBold,
              color: context.getColorScheme.blackColor,
            ),
            DLogText(
              "2",
              style: context.getTextTheme.smallRegular,
              color: context.getColorScheme.blackColor,
            )
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        right: 10,
        top: 10,
        bottom: 10,
      );
}
