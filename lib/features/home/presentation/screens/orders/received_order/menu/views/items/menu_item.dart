import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ArrivedOrderMenuItem extends StatelessWidget {
  final String label;
  final VoidCallback onTap;

  const ArrivedOrderMenuItem({
    super.key,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 5),
      height: 60,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: context.getColorScheme.yellow.light,
        border: Border.all(color: context.getColorScheme.yellow.normal),
      ),
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.5,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                child: DLogText(
                  label,
                  style: context.getTextTheme.bodyMedium,
                  color: context.getColorScheme.blackColor,
                ),
              ),
              DLogSvgImage(
                path: DLogIcons.chevronRight,
                width: 24,
                height: 24,
                color: context.getColorScheme.black.normal,
              ),
            ],
          ),
        ),
      ),
    );
  }


}
