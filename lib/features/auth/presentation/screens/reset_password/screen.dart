import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/bottom_sheet/success.dart';
import 'package:dlog/features/auth/presentation/res/locale/reset_password_locale.dart';
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
            TextFieldAndButtonView(
              onReset: () {
                showDlogSuccessfulBottomSheet(
                    context: context,
                    text: context.getLocale(ResetPasswordLocale.successful),
                    route: AppRoute.home);
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
        bottom: 112,
      );
}
