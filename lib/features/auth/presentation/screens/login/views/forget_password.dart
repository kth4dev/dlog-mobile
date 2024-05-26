import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
        onTap: () {},
        child: DLogText(
          "Forgot Password?",
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.black.dark,
        ),
      ),
    );
  }
}
