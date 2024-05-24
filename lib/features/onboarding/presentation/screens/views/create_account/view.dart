import 'package:dlog/core/images/graphic/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/features/onboarding/presentation/screens/views/create_account/items/actions_buttons.dart';
import 'package:dlog/features/onboarding/presentation/screens/views/create_account/items/description.dart';
import 'package:flutter/material.dart';

class CreateAccountView extends StatelessWidget {
  final VoidCallback onLogin, onSignUp;

  const CreateAccountView({
    super.key,
    required this.onSignUp,
    required this.onLogin,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DLogSvgImage(path: DLogGraphic.enterPassword, height: 342),
          const CreateAccountDescription(),
          CreateAccountButtons(onLogin: onLogin, onSignUp: onSignUp)
        ],
      ),
    );
  }
}
