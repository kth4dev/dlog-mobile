import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/image/circle_icon.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AllOrderItem extends StatelessWidget {
  const AllOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoute.receivedAllOrderDetail);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        padding: _screenPadding,
        decoration: BoxDecoration(
          color: context.getColorScheme.yellow.light,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          ),
        ),
        child: Row(
          children: [
            DLogCircleIcon(
              path: DLogIcons.deliveryTime,
              iconSize: 24,
              size: 40,
              backgroundColor: context.getColorScheme.blackColor,
              foregroundColor: context.getColorScheme.yellow.normal,
            ),
            32.spacingWidth,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DLogText(
                    context.getLocale(ReceivedOrderLocale.orderNo),
                    style: context.getTextTheme.tertiaryRegular,
                    color: context.getColorScheme.blackColor,
                  ),
                  10.spacingHeight,
                  DLogText(
                    "Arrived WH name",
                    style: context.getTextTheme.tertiaryRegular,
                    color: context.getColorScheme.blackColor,
                  ),
                  10.spacingHeight,
                  DLogText(
                    "Arrived location address",
                    style: context.getTextTheme.tertiaryRegular,
                    color: context.getColorScheme.blackColor,
                  ),
                  10.spacingHeight,
                  DLogText(
                    "${context.getLocale(ReceivedOrderLocale.date)}: 10 Apr, 2024",
                    style: context.getTextTheme.tertiaryRegular,
                    color: context.getColorScheme.blackColor,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 10,
  );
}
