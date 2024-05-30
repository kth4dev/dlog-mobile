import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class Tracking extends StatelessWidget {
  const Tracking({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        circle(context),
        Container(
            width: 80,
            height: 2,
            color:context.getColorScheme.blackColor
        ),
        circle(context),
      ],
    );
  }

  Widget circle(BuildContext context){
    return Container(
      width: 10,
      height: 10,
      decoration: BoxDecoration(
          color: context.getColorScheme.blackColor,
          borderRadius: BorderRadius.circular(50)),
    );
  }
}
