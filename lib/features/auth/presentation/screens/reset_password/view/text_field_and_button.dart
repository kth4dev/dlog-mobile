import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text_fields/password_text_field.dart';
import 'package:dlog/features/auth/presentation/res/locale/reset_password_locale.dart';
import 'package:flutter/material.dart';

class TextFieldAndButtonView extends StatelessWidget {
  final VoidCallback onReset;

  const TextFieldAndButtonView({super.key, required this.onReset});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         DLogPasswordTextField(
          hintText: context.getLocale(ResetPasswordLocale.enterNewPassword),
          label: context.getLocale(ResetPasswordLocale.newPassword),
          textInputType: TextInputType.text,
        ),
        20.spacingHeight,
         DLogPasswordTextField(
          hintText: context.getLocale(ResetPasswordLocale.enterConfirmNewPassword),
          label: context.getLocale(ResetPasswordLocale.confirmNewPassword),
          textInputType: TextInputType.text,
        ),
        52.spacingHeight,
        DLogPrimaryButton(
          text:context.getLocale(ResetPasswordLocale.enter),
          onPressed: onReset,
          width: 160,
          height: 40,
        )
      ],
    );
  }
}
