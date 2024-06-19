import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/auth/presentation/res/locale/sign_up_locale.dart';
import 'package:flutter/material.dart';

class SignUpAndLoginView extends StatelessWidget {
  final VoidCallback onLogin, onSignUp;

  const SignUpAndLoginView({
    super.key,
    required this.onLogin,
    required this.onSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogPrimaryButton(
          text: context.getLocale(SignUpLocale.signUp),
          onPressed: onSignUp,
          width: 160,
          height: 40,
        ),
        20.spacingHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLogText(
             "${context.getLocale(SignUpLocale.haveAccount)}?",
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.grey.normalActive,
            ),
            5.spacingWidth,
            InkWell(
              onTap: onLogin,
              child: DLogText(
                context.getLocale(SignUpLocale.login),
                style: context.getTextTheme.tertiaryBold,
                color: context.getColorScheme.black.normal,
              ),
            )
          ],
        )
      ],
    );
  }
}
