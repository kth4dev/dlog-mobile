import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/image/circle_icon.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/confirm_order_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ConfirmOrderItem extends StatelessWidget {
  const ConfirmOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoute.confirmOrderDetail);
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
              path: DLogIcons.documentHistory,
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
                   "Name of Shipping Order",
                    style: context.getTextTheme.secondaryBold,
                    color: context.getColorScheme.black.normal,
                  ),
                  10.spacingHeight,
                  DLogText(
                    "${context.getLocale(ConfirmOrderLocale.orderNo)}: 123",
                    style: context.getTextTheme.secondaryRegular,
                    color: context.getColorScheme.black.normal,
                  ),
                  10.spacingHeight,
                  DLogText(
                    "${context.getLocale(ConfirmOrderLocale.date)}: 10 Apr, 2024",
                    style: context.getTextTheme.secondaryRegular,
                    color: context.getColorScheme.black.normal,
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
        vertical: 25,
      );
}
