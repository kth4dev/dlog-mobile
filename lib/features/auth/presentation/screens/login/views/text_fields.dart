import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/core/ui/text_fields/password_text_field.dart';
import 'package:dlog/features/auth/presentation/res/locale/login_locale.dart';
import 'package:flutter/material.dart';

class LoginTextFieldsView extends StatelessWidget {
  const LoginTextFieldsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogOutLinedTextField(
          hintText: context.getLocale(LoginLocale.enterUserNameOrEmail),
          label: context.getLocale(LoginLocale.userNameOrEmail),
          textInputType: TextInputType.text,
          isValidation: true,
          onChange: (value) {},
        ),
        20.spacingHeight,
         DLogPasswordTextField(
          hintText:context.getLocale(LoginLocale.enterPassword),
          label: context.getLocale(LoginLocale.password),
          textInputType: TextInputType.text,
          isValidation: true,
        )
      ],
    );
  }
}
