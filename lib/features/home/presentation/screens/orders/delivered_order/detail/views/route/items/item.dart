import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/delivered_order_locale.dart';
import 'package:flutter/material.dart';

import 'location.dart';

class RouteDetailItem extends StatelessWidget {
  const RouteDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            DLogText(
              context.getLocale(DeliveredOrderLocale.deliveredDate),
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.blackColor,
            ),
            const Spacer(),
            DLogText(
              "24 Apr 2024",
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.blackColor,
            ),
          ],
        ),
        Divider(
          color: context.getColorScheme.grey.lightActive,
        ),
         LocationItem(label:context.getLocale(DeliveredOrderLocale.deliveredFrom), location: "Yangon"),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.5),
          child: DLogSvgImage(
            path: DLogIcons.downArrowRoute,
            width: 20,
            height: 20,
          ),
        ),
         LocationItem(label: context.getLocale(DeliveredOrderLocale.deliveredTo), location: "Mandalay"),
      ],
    );
  }
}
