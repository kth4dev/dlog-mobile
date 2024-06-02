import 'package:flutter/material.dart';

import 'svg_image.dart';

class DLogCircleImage extends StatelessWidget {
  final String path;
  final double? size;
  final double? iconSize;
  final Color? backgroundColor, foregroundColor;

  const DLogCircleImage({
    super.key,
    required this.path,
    this.size,
    this.iconSize,
    this.backgroundColor,
    this.foregroundColor,
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
      child: DLogSvgImage(
        path: path,
        size: iconSize,
        color: foregroundColor,
      ),
    );
  }
}
