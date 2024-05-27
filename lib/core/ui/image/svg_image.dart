import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class DLogSvgImage extends StatelessWidget {
  final String path;
  final double? size;
  final double? width;
  final double? height;
  final Color? color;

  const DLogSvgImage({
    super.key,
    required this.path,
    this.size,
    this.width,
    this.height,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width ?? size,
      height: height ?? size,
      color: color,
    );
  }
}
