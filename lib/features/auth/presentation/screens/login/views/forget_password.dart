import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  final VoidCallback onPressed;

  const ForgetPasswordView({
    super.key,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
        onTap: onPressed,
        child: DLogText(
          "Forgot Password?",
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.black.dark,
        ),
      ),
    );
  }
}
