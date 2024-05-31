import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class LabelAndTextField extends StatelessWidget {
  final String label;
  final String text;
  const LabelAndTextField({super.key,required this.label,required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(label,style: context.getTextTheme.tertiaryMedium,color: context.getColorScheme.blackColor,),
        2.spacingHeight,
        Container(
          alignment: Alignment.centerLeft,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: context.getColorScheme.yellow.normal,
          ),
          child: DLogText(text,style: context.getTextTheme.tertiaryRegular,color: context.getColorScheme.blackColor,),
        )
      ],
    );
  }
}
