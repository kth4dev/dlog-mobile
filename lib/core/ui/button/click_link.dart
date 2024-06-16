import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DLogClickTextButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final double? width, height;

  const DLogClickTextButton({
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
      child: TextButton(
        onPressed: onPressed,
        child: DLogText(
          text,
          style: context.getTextTheme.bodyMedium,
          color: context.getColorScheme.yellow.normal,
        ),
      ),
    );
  }
}
