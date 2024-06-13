import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ButtonItem extends StatelessWidget {
  final Color color;
  final Color textColor;
  final String text;
  final String icon;
  final VoidCallback onTap;
  const ButtonItem({super.key,required this.color,required this.icon,required this.textColor,required this.text,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 142,
        height: 40,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: color
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLogText(
              text,
              style: context.getTextTheme.tertiaryMedium,
              color: textColor,
            ),
            10.spacingWidth,
            DLogSvgImage(path: icon,width: 19.5,height: 21.5,color: context.getColorScheme.whiteColor,),
          ],
        ),
      ),
    );
  }
}
