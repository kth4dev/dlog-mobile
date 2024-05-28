import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/bottom_nav/data.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DLogBottomNavigationItem extends StatelessWidget {
  final DLogBottomNavItemData data;
  final bool isSelected;
  final VoidCallback onTap;

  const DLogBottomNavigationItem({
    super.key,
    required this.data,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final textTheme = context.getTextTheme;
    final colorScheme = context.getColorScheme;
    final color =
        isSelected ? colorScheme.yellow.normal : colorScheme.whiteColor;
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DLogSvgImage(
              path: data.icon,
              color: color,
            ),
            5.spacingHeight,
            DLogText(
              data.label,
              style: textTheme.tertiaryMedium,
              color: color,
              maxLine: 2,
              textAlign: TextAlign.center,
            )
          ],
        ),
      ),
    );
  }
}
