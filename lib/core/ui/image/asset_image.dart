import 'package:flutter/material.dart';

class DLogAssetImage extends StatelessWidget {
  final String path;
  final double? size;

  const DLogAssetImage(
      {super.key, required this.path, this.size,});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      path,
      width: size,
      height: size,
    );
  }
}
