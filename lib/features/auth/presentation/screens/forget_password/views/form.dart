import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class TextFieldAndButtonView extends StatelessWidget {
  final VoidCallback onEnter;

  const TextFieldAndButtonView({super.key, required this.onEnter});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DLogOutLinedTextField(
          hintText: "Enter phone no or email",
          label: "Enter Phone no or email",
          textInputType: TextInputType.text,
        ),
        50.spacingHeight,
        DLogPrimaryButton(
          text: "Enter",
          onPressed: onEnter,
          width: 160,
          height: 40,
        )
      ],
    );
  }
}
