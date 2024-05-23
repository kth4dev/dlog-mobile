import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/click_button.dart';
import 'package:dlog/core/ui/button/secondary_button.dart';
import 'package:flutter/material.dart';

class CreateAccountButtons extends StatelessWidget {
  final VoidCallback onLogin, onSignUp;

  const CreateAccountButtons({
    super.key,
    required this.onLogin,
    required this.onSignUp,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DLogSecondaryButton(
          text: "Login",
          onPressed: onLogin,
          width: 160,
          height: 40,
        ),
        22.spacingWidth,
        DLogClickButton(
          text: "Sign Up",
          onPressed: onSignUp,
          width: 160,
          height: 40,
        ),
      ],
    );
  }
}
