import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/image/circle_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NotificationItem extends StatelessWidget {
  const NotificationItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        context.push(AppRoute.notificationDetail);
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
            DLogCircleImage(
              path: DLogIcons.bell,
              iconSize: 24,
              size: 40,
              backgroundColor: context.getColorScheme.blackColor,
              foregroundColor: context.getColorScheme.yellow.normal,
              isUnread: true,
            ),
            32.spacingWidth,
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DLogText(
                    "Title Notification",
                    style: context.getTextTheme.secondaryMedium,
                    color: context.getColorScheme.black.normal,
                  ),
                  10.spacingHeight,
                  DLogText(
                    "Lorem ipsum dolor sit amet consectetur. Imperdiet ridiculus dui etiam eros pharetra sit.",
                    style: context.getTextTheme.tertiaryRegular,
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
        vertical: 22,
      );
}
