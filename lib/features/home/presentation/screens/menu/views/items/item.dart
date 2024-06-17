import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class OrderManagementItem extends StatelessWidget {
  final String icon;
  final String text;
  final String qty;
  final VoidCallback onTap;
  const OrderManagementItem({super.key,required this.icon,required this.text,required this.qty,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
         width: 160,
         height: MediaQuery.of(context).size.height * 0.20,
        padding: _screenPadding,
        decoration: BoxDecoration(
            border: Border.all(color: context.getColorScheme.yellow.normal),
            borderRadius: BorderRadius.circular(5),
            color: context.getColorScheme.yellow.light),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLogSvgImage(path: icon,width: 24,height: 24,color: context.getColorScheme.black.normal,),
            20.spacingHeight,
            DLogText(text,style: context.getTextTheme.tertiaryMedium,color: context.getColorScheme.black.normal,textAlign: TextAlign.center,),
            20.spacingHeight,
            DLogText(qty,style: context.getTextTheme.tertiaryHeaderMedium,color: context.getColorScheme.blackColor,textAlign: TextAlign.center,),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding =>  const EdgeInsets.symmetric(
    horizontal: 25.5,
    vertical: 8
  );
}
