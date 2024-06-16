import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class LoginAndSingUpViews extends StatelessWidget {
  final VoidCallback onLogin, onSignUp;

  const LoginAndSingUpViews({
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
          text: "Login",
          onPressed: onLogin,
          width: 160,
          height: 40,
        ),
        20.spacingHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLogText(
              "Don't have an account?",
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.grey.normalActive,
            ),
            5.spacingWidth,
            InkWell(
              onTap: onSignUp,
              child: DLogText(
                "Sign Up",
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
