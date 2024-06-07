import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/image/circle_icon.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DeliveredOrderItem extends StatelessWidget {
  const DeliveredOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoute.deliveredOrderDetail);
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 10),
        decoration: BoxDecoration(
          color: context.getColorScheme.yellow.light,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: _screenPadding,
              child: Row(
                children: [
                  DLogCircleIcon(
                    path: DLogIcons.delivery,
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
                          "Warehouse Name",
                          style: context.getTextTheme.secondaryMedium,
                          color: context.getColorScheme.blackColor,
                        ),
                        10.spacingHeight,
                        DLogText(
                          "Order No: 123",
                          style: context.getTextTheme.tertiaryRegular,
                          color: context.getColorScheme.blackColor,
                        ),
                        10.spacingHeight,
                        DLogText(
                          "Date: 10 Apr, 2024",
                          style: context.getTextTheme.tertiaryRegular,
                          color: context.getColorScheme.blackColor,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(right: 0, top: 0, child: _deliveredContainer(context))
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 25,
  );

  Widget _deliveredContainer(BuildContext context) => Container(
    padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
    decoration: BoxDecoration(
        color: context.getColorScheme.black.normal,
        borderRadius: const BorderRadius.only(
            topRight: Radius.circular(10),
            bottomLeft: Radius.circular(10))),
    child: DLogText(
      "Delivered",
      style: context.getTextTheme.tertiaryBold,
      color: context.getColorScheme.yellow.normal,
    ),
  );
}
