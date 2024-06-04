import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/shape/circle.dart';
import 'package:flutter/material.dart';

import 'svg_image.dart';

class DLogCircleImage extends StatelessWidget {
  final String path;
  final double? size;
  final double? iconSize;
  final Color? backgroundColor, foregroundColor;
  final bool isUnread;

  const DLogCircleImage({
    super.key,
    required this.path,
    this.size,
    this.iconSize,
    this.backgroundColor,
    this.foregroundColor,
    this.isUnread = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: size,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: backgroundColor,
        shape: BoxShape.circle,
      ),
      child: SizedBox(
        width: iconSize,
        height: iconSize,
        child: Stack(
          children: [
            DLogSvgImage(
              path: path,
              size: iconSize,
              color: foregroundColor,
            ),
            Align(
              alignment: Alignment.topRight,
              child: Visibility(
                visible: isUnread,
                child: DLogCircleShape(
                  size: 10,
                  color: context.getColorScheme.errorColor,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
