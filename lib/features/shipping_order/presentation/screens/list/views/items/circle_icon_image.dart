import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:flutter/material.dart';

class CircleIconImage extends StatelessWidget {
  final String img;
  const CircleIconImage({super.key,required this.img});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: context.getColorScheme.blackColor,
        borderRadius: BorderRadius.circular(50),
      ),
     child: DLogSvgImage(path: img,width: 24,height: 24,color:context.getColorScheme.yellow.normal,),
    );
  }
}
