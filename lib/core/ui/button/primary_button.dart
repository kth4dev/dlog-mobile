import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DLogPrimaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width, height;

  const DLogPrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor: context.getColorScheme.black.normal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5),
            ),
          ),
          child: DLogText(
            text,
            style: context.getTextTheme.bodyBold,
            color: context.getColorScheme.yellow.normal,
          )),
    );
  }
}
