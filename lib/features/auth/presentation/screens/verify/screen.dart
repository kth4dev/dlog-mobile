import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'view/views.dart';

class VerifyScreen extends StatelessWidget {
  const VerifyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          children: [
            const HeaderView(),
            60.spacingHeight,
            OtpView(
              onVerify: (code) {
                context.go(AppRoute.resetPassword);
              },
              onRetry: () {

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
        top: 78,
      );
}
