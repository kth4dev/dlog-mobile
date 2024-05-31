import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class CheckBoxAndText extends StatefulWidget {
  const CheckBoxAndText({super.key});

  @override
  State<CheckBoxAndText> createState() => _CheckBoxAndTextState();
}

class _CheckBoxAndTextState extends State<CheckBoxAndText> {
    bool _isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        InkWell(
          onTap: (){
            setState(() {
              _isChecked = !_isChecked;
            });
          },
          child: Container(
            width: 24,
            height: 24,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(width: 1),
            ),
            child: _isChecked
                ? const Icon(Icons.check, size: 15,)
                : null,
          ),
        ),
        20.spacingWidth,
        DLogText("Agree terms and conditions",style: context.getTextTheme.secondaryRegular,color: context.getColorScheme.blackColor,)
      ],
    );
  }
}
