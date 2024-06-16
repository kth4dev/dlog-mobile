import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/core/ui/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

class TextFieldAndButtonView extends StatelessWidget {
  final VoidCallback onReset;

  const TextFieldAndButtonView({super.key, required this.onReset});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DLogPasswordTextField(
          hintText: "Enter New Password",
          label: "Enter new Password",
          textInputType: TextInputType.text,
        ),
        20.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Confirm New Password",
          label: "Confirm new Password",
          textInputType: TextInputType.text,
        ),
        52.spacingHeight,
        DLogPrimaryButton(
          text: "Enter",
          onPressed: onReset,
          width: 160,
          height: 40,
        )
      ],
    );
  }
}
