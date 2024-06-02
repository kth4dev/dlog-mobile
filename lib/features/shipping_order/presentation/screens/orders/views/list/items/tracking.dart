import 'package:dlog/core/ui/shape/circle.dart';
import 'package:flutter/material.dart';

class Tracking extends StatelessWidget {
  final Color color;

  const Tracking({super.key, required this.color});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
       _circleShape,
        Container(
          width: 80,
          height: 2,
          color: color,
        ),
        _circleShape,
      ],
    );
  }

  Widget get _circleShape => DLogCircleShape(
        size: 10,
        color: color,
      );
}
