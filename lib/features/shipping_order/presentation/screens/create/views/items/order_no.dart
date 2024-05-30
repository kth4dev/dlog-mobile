import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class OrderNo extends StatelessWidget {
  const OrderNo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Order no",
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        Container(
          width: 140,
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              color: context.getColorScheme.grey.light,
              border: Border.all(color: context.getColorScheme.yellow.normal)),
          child: Center(
              child: DLogText(
            "DL0001",
            style: context.getTextTheme.secondaryRegular,
            color: context.getColorScheme.blackColor,
            textAlign: TextAlign.center,
          )),
        ),
      ],
    );
  }
}
