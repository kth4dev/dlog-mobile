import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/auth/presentation/res/locale/forget_password_locale.dart';
import 'package:flutter/material.dart';

class TextFieldAndButtonView extends StatelessWidget {
  final VoidCallback onEnter;

  const TextFieldAndButtonView({super.key, required this.onEnter});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
         DLogOutLinedTextField(
          hintText: context.getLocale(ForgetPasswordLocale.enterPhoneNoOrEmail),
          label:  context.getLocale(ForgetPasswordLocale.phoneNoOrEmail),
          textInputType: TextInputType.text,
        ),
        50.spacingHeight,
        DLogPrimaryButton(
          text:  context.getLocale(ForgetPasswordLocale.enter),
          onPressed: onEnter,
          width: 160,
          height: 40,
        )
      ],
    );
  }
}
