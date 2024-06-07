import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class MetricContainer extends StatelessWidget {
  final String label;
  final String value;
  const MetricContainer({super.key,required this.label,required this.value});

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
        10.spacingHeight,
        Container(
          width: 100,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: context.getColorScheme.yellow.light,
            border: Border.all(
              color: context.getColorScheme.yellow.normal,
            )
          ),
          child:  Center(
            child: DLogText(
              value,
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.blackColor,textAlign: TextAlign.center,
            ),
          ),
        )
      ],
    );
  }
}
