import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class LabelDescription extends StatelessWidget {
  final String label;
  final String description;
  final Alignment? descriptionAlignment;
  final double? descriptionWidth, descriptionHeight;

  const LabelDescription({
    super.key,
    required this.label,
    required this.description,
    this.descriptionWidth,
    this.descriptionHeight = 40,
    this.descriptionAlignment = Alignment.centerLeft,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          label,
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        2.spacingHeight,
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
            style: context.getTextTheme.tertiaryRegular,
            color: context.getColorScheme.blackColor,
          ),
        )
      ],
    );
  }
}
