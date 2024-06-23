import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/circle_icon.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class AddressListItem extends StatelessWidget {
  const AddressListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLogCircleIcon(
          path: DLogIcons.location,
          iconSize: 24,
          size: 40,
          backgroundColor: context.getColorScheme.blackColor,
          foregroundColor: context.getColorScheme.yellow.normal,
        ),
        10.spacingWidth,
        Expanded(
          child: DLogText(
            "No262, Bargayar Street, MyayNyiGone, SanChaung Township, Yangon",
            style: context.getTextTheme.tertiaryRegular,
            color: context.getColorScheme.blackColor,
          ),
        ),
        10.spacingWidth,
        DLogSvgImage(
          path: DLogIcons.edit1,
          size: 24,
          color: context.getColorScheme.yellow.normal,
        ),
      ],
    );
  }
}
