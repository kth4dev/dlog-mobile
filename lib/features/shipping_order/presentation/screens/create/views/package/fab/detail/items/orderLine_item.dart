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
          const ClipRRect(
            borderRadius: BorderRadius.only(topLeft: Radius.circular(10),bottomLeft: Radius.circular(10)),
            child: DLogAssetImage(
                path: "assets/images/sample/Rectangle 41175.jpg"),
          ),
          30.spacingWidth,
          Padding(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                DLogText(
                  "Bottle",
                  style: context.getTextTheme.secondaryBold,
                  color: context.getColorScheme.black.normal,
                  overflow: TextOverflow.ellipsis,
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
        ],
      ),
    );
  }


  EdgeInsets get _screenPadding => const EdgeInsets.only(
    right: 10,
    top: 10,
    bottom: 10,
  );
}
