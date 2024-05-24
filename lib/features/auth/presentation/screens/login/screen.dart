import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/auth/presentation/screens/login/view/label_and_textField.dart';
import 'package:dlog/features/auth/presentation/screens/login/view/text_and_button.dart';
import 'package:flutter/material.dart';

import '../../../../../core/images/logo/logo.dart';
import '../../../../../core/ui/image/asset_image.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child: Column(
            children: [
              const DLogAssetImage(
                path: DLogLogo.deDynamic,
                size: 100,
              ),
              40.spacingHeight,
              const LabelAndTextField(),
              20.spacingHeight,
              const TextAndButton(),
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 100,
        bottom: 196,
      );
}
