import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/auth/presentation/screens/verify/view/header.dart';
import 'package:dlog/features/auth/presentation/screens/verify/view/otp.dart';
import 'package:flutter/material.dart';

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
            const OtpView(),
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
