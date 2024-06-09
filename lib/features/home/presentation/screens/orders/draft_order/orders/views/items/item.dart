import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/image/circle_icon.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DraftOrderItem extends StatelessWidget {
  const DraftOrderItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoute.draftOrderDetail);
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
                          "${context.getLocale(DraftOrderLocale.orderNo)}: 123",
                          style: context.getTextTheme.secondaryRegular,
                          color: context.getColorScheme.black.normal,
                        ),
                        10.spacingHeight,
                        DLogText(
                          "${context.getLocale(DraftOrderLocale.date)}: 10 Apr, 2024",
                          style: context.getTextTheme.secondaryRegular,
                          color: context.getColorScheme.black.normal,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Positioned(right: 0, bottom: 0, child: _draftContainer(context))
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 25,
      );

  Widget _draftContainer(BuildContext context) => Container(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        decoration: BoxDecoration(
            color: context.getColorScheme.black.normal,
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(10),
                bottomRight: Radius.circular(10))),
        child: DLogText(
          context.getLocale(DraftOrderLocale.status),
          style: context.getTextTheme.tertiaryBold,
          color: context.getColorScheme.yellow.normal,
        ),
      );
}
