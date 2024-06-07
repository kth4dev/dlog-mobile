import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/in_transit_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/item.dart';

class InTransitDetailView extends StatelessWidget {
  const InTransitDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: _screenPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: context.getColorScheme.yellow.light,
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          )),
      child: ExpansionTile(
        minTileHeight: 0,
        shape: const RoundedRectangleBorder(side: BorderSide.none),
        tilePadding: const EdgeInsets.all(0),
        title: Row(
          children: [
            DLogText(
              context.getLocale(InTransitOrderLocale.orderNo),
              style: context.getTextTheme.bodyMedium,
              color: context.getColorScheme.blackColor,
            ),
            const Spacer(),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                  color: context.getColorScheme.black.normal),
              child: DLogText(
                context.getLocale(InTransitOrderLocale.status),
                style: context.getTextTheme.bodyRegular,
                color: context.getColorScheme.yellow.normal,
              ),
            ),
          ],
        ),
        children: const [
          InTransitDetailItem(),
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding =>
      const EdgeInsets.only(left: 16, right: 16, top: 5, bottom: 5);
}
