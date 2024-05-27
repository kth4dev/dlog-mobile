import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          children: [
            const HeaderView(),
            20.spacingHeight,
            const DescriptionView(),
            30.spacingHeight,
            const TextFieldAndButtonView(),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 40,
        bottom: 38,
      );
}
