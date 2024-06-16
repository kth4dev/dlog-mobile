import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/logo.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/core/ui/bottom_sheet/success.dart';
import 'package:dlog/features/auth/presentation/screens/sign_up/views/views.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const DLogAppBar(title: "SignUp"),
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
              SignUpAndLoginView(
                onLogin: () {
                  context.go(AppRoute.login);
                },
                onSignUp: () {
                  showDlogSuccessfulBottomSheet(
                    context: context,
                    text: "Signup Successful",
                    route: AppRoute.login,
                  );
                },
              ),
            ],
          ),
        ));
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 40,
        bottom: 40,
      );
}
