import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class RecentShippingOrderHeader extends StatelessWidget {
  const RecentShippingOrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLogText(
          "Recent Shipping Order",
          style: context.getTextTheme.tertiaryHeaderMedium,
          color: context.getColorScheme.blackColor,
        ),
        const Spacer(),
        InkWell(
          onTap: (){},
          child: DLogText(
            "More",
            style: context.getTextTheme.tertiaryBold,
            color: context.getColorScheme.yellow.normal,
          ),
        ),
      ],
    );
  }
}
