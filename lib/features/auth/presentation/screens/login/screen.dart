import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/logo/logo.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

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
        padding: _screenPadding,
        child: Column(
          children: [
            const DLogAssetImage(
              path: DLogLogo.deDynamic,
              size: 100,
            ),
            40.spacingHeight,
            const LoginTextFieldsView(),
            20.spacingHeight,
            const ForgetPasswordView(),
            40.spacingHeight,
            const LoginAndSingUpViews(),
          ],
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
