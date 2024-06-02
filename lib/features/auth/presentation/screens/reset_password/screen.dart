import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'view/views.dart';

class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderView(),
            40.spacingHeight,
            const DescriptionView(),
            20.spacingHeight,
            const TextFieldAndButtonView(),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 78,
    bottom: 112
  );
}
