import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/auth/presentation/res/locale/reset_password_locale.dart';
import 'package:flutter/material.dart';


class DescriptionView extends StatelessWidget {
  const DescriptionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(ResetPasswordLocale.newPasswordRequirement),
          style: context.getTextTheme.tertiaryMedium,
        ),
        DLogText(
          context.getLocale(ResetPasswordLocale.newPasswordRule),
          style: context.getTextTheme.tertiaryMedium,
        ),
      ],
    );
  }
}
