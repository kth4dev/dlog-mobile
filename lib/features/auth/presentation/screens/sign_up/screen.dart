import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/auth/presentation/screens/sign_up/view/label_and_signup_text_field.dart';
import 'package:dlog/features/auth/presentation/screens/sign_up/view/text_and_signup_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/images/logo/logo.dart';
import '../../../../../core/ui/image/asset_image.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          children: [
            const DLogAssetImage(
              path: DLogLogo.deDynamic,
              size: 100,
            ),
            30.spacingHeight,
            const LabelAndSignUpTextField(),
            21.spacingHeight,
            const TextAndSignUpButton(),
          ],
        ),
      )
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 40,
    bottom: 40,
  );
}

