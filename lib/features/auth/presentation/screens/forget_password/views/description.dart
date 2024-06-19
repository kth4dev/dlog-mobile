import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/auth/presentation/res/locale/forget_password_locale.dart';
import 'package:flutter/material.dart';

class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(ForgetPasswordLocale.passwordRequirement),
          style: context.getTextTheme.tertiaryMedium,
        ),
        DLogText(
          context.getLocale(ForgetPasswordLocale.passwordRule),
          style: context.getTextTheme.tertiaryMedium,
        ),
        40.spacingHeight,
        DLogText(
          context.getLocale(ForgetPasswordLocale.resetInputPrompt),
          style: context.getTextTheme.tertiaryMedium,
        ),
        20.spacingHeight,
        DLogText(context.getLocale(ForgetPasswordLocale.passwordChangeRequirement),
            style: context.getTextTheme.smallRegular),
      ],
    );
  }
}
