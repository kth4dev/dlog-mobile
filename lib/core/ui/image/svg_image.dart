import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SvgImage extends StatelessWidget {
  final String path;
  final double? size;
  final double? width;
  final double? height;

  const SvgImage(
      {super.key, required this.path, this.size,this.width,this.height});

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      width: width ?? size,
      height: height ?? size,
    );
  }
}
