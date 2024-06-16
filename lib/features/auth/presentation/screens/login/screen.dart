import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/logo.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
      appBar: const DLogAppBar(title: "Login"),
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
            ForgetPasswordView(
              onPressed: () {
                context.push(AppRoute.forgetPassword);
              },
            ),
            40.spacingHeight,
            LoginAndSingUpViews(
              onLogin: () {
                context.go(AppRoute.home);
              },
              onSignUp: () {
                context.go(AppRoute.signUp);
              },
            ),
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
