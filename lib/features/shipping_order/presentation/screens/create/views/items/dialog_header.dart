import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DialogHeader extends StatelessWidget {
  final String header;
  final VoidCallback onTap;
  const DialogHeader({super.key,required this.header,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        DLogText(header,style: context.getTextTheme.bodyMedium,color: context.getColorScheme.blackColor,),
        const Spacer(),
        InkWell(
            onTap: onTap,
            child: DLogSvgImage(path: "assets/images/icons/hicon/Bold/Close.svg",width: 24,height: 24,color: context.getColorScheme.blackColor,))
      ],
    );
  }
}
