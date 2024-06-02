import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/graphic/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class EmptyShippingOrderView extends StatelessWidget {
  const EmptyShippingOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DLogSvgImage(
            path: DLogGraphic.noData,
            width: 221,
            height: 216,
          ),
          40.spacingHeight,
          DLogText(
            "Empty Shipping order",
            style: context.getTextTheme.secondHeaderMedium,
            color: context.getColorScheme.blackColor,
          )
        ],
      ),
    );
  }
}
