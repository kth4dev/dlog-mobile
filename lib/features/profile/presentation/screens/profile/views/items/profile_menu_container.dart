import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ProfileMenuContainer extends StatelessWidget {
  final String text;
  final String imageIcon;
  final String? forwardIcon;
  final VoidCallback onTap;
  final String? label;
  const ProfileMenuContainer({super.key,required this.text,required this.imageIcon,this.forwardIcon,this.label,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: _screenPadding,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.getColorScheme.yellow.light,
          border: Border.all(
              color: context.getColorScheme.yellow.normal
          )
      ),
      child:  InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.5,),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              DLogSvgImage(path: imageIcon,width: 24,height: 24,color: context.getColorScheme.black.normal,),
              20.spacingWidth,
              DLogText(text,style: context.getTextTheme.bodyMedium,color: context.getColorScheme.blackColor,),
               const Spacer(),
              if(forwardIcon !=null)
                DLogSvgImage(path: forwardIcon!,width: 24,height: 24,color: context.getColorScheme.black.normal,),
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
  );
}
