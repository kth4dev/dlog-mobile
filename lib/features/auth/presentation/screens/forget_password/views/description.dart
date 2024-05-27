import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Remember your password must:",
          style: context.getTextTheme.tertiaryMedium,
        ),
        DLogText(
          "  1. be at least 8 characters",
          style: context.getTextTheme.tertiaryMedium,
        ),
        DLogText(
          "  2. contain a letter",
          style: context.getTextTheme.tertiaryMedium,
        ),
        DLogText(
          "  3. contain a number",
          style: context.getTextTheme.tertiaryMedium,
        ),
        DLogText(
          "  4. not contain the word 'password'",
          style: context.getTextTheme.tertiaryMedium,
        ),
        DLogText(
          "  5. not contain your first name or last name",
          style: context.getTextTheme.tertiaryMedium,
        ),
        40.spacingHeight,
        DLogText(
          "Please enter your phone no or email that you want to reset the password.",
          style: context.getTextTheme.tertiaryMedium,
        ),
        20.spacingHeight,
        DLogText("Required to change your password*",
            style: context.getTextTheme.smallRegular),
      ],
    );
  }
}