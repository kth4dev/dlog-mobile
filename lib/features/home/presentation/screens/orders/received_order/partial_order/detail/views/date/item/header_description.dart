import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class HeaderDescription extends StatelessWidget {
  final String label;
  final String description;
  final Alignment? descriptionAlignment;
  final double? descriptionWidth, descriptionHeight;
  final TextOverflow? overflow;
  final double? labelWidth;

  const HeaderDescription({
    super.key,
    required this.label,
    required this.description,
    this.descriptionWidth,
    this.descriptionHeight = 52,
    this.descriptionAlignment = Alignment.centerLeft,
    this.overflow,
    this.labelWidth
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: labelWidth,
          child: DLogText(
            label,
            style: context.getTextTheme.secondaryBold,
            color: context.getColorScheme.blackColor,
            overflow: overflow,
          ),
        ),
        10.spacingHeight,
        Container(
          alignment: descriptionAlignment,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: descriptionHeight,
          width: descriptionWidth,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: context.getColorScheme.yellow.normal,
          ),
          child: DLogText(
            description,
            style: context.getTextTheme.tertiaryMedium,
            color: context.getColorScheme.black.normal,
          ),
        )
      ],
    );
  }
}
