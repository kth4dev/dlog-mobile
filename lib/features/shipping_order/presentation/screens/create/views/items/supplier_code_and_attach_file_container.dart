import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class SupplierCodeAndAttachFileContainer extends StatelessWidget {
  final String label;
  final String hintText;
  final String icon;
  final VoidCallback onTap;
  const SupplierCodeAndAttachFileContainer({super.key,required this.icon,required this.label,required this.hintText,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DLogText(
            label,
            style: context.getTextTheme.tertiaryMedium,
            color: context.getColorScheme.blackColor,
          ),
          10.spacingHeight,
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            width: 342,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(
                width: 1,
                color: context.getColorScheme.grey.normal,
              ),
            ),
            child: Row(
              children: [
                Expanded(child: DLogText(hintText,style: context.getTextTheme.tertiaryRegular,color: context.getColorScheme.grey.normal,)),
                DLogSvgImage(path: icon,width: 9,height: 19,color: context.getColorScheme.blackColor,)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
