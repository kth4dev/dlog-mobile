import 'package:flutter/material.dart';

class DLogCircleImage extends StatelessWidget {
  final String path;
  final double size;

  const DLogCircleImage({
    super.key,
    required this.path,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Image.asset(
        path,
        height: size,
        width: size,
        fit: BoxFit.cover,
      ), //todo : should be cache network image
    );
  }
}
