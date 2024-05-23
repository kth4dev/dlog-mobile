import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DLogClickSecondaryButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const DLogClickSecondaryButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5)
            ),
            backgroundColor: Colors.white,
            side: BorderSide(
              color: context.getColorScheme.yellow.normal,
            )),
        child: DLogText(
          text,
          style: context.getTextTheme.bodyBold,
          color: context.getColorScheme.black.normal,
        ));
  }
}
