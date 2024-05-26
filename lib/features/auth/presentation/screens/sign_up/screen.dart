import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/logo/logo.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/features/auth/presentation/screens/sign_up/views/text_fields.dart';
import 'package:dlog/features/auth/presentation/screens/sign_up/views/buttons.dart';
import 'package:flutter/material.dart';


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
            const SingUpTextFieldsView(),
            21.spacingHeight,
            const SignUpAndLoginView(),
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

