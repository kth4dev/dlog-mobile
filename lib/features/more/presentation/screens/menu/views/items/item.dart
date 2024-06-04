import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class MoreMenuItem extends StatelessWidget {
  final String icon;
  final String label;
  final VoidCallback onTap;
  const MoreMenuItem({super.key,required this.label,required this.icon,required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: _screenPadding,
        child: Row(
          children: [
            DLogSvgImage(path: icon,width: 24,height: 24,color: context.getColorScheme.yellow.normal,),
            10.spacingWidth,
            Expanded(child: DLogText(label,style: context.getTextTheme.bodyBold,color: context.getColorScheme.black.normal,))
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 10,
    right: 10,
    top: 12,
    bottom: 12,
  );
}
