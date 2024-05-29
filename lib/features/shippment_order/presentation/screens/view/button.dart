import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingActionButtonView extends StatelessWidget {
  const FloatingActionButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50)
      ),
      backgroundColor: context.getColorScheme.black.normal,
      onPressed: () {},
      child: Icon(Icons.add,color: context.getColorScheme.yellow.normal,size: 24,),
    );
  }
}
