import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class EditProfileTextFieldsView extends StatelessWidget {
  const EditProfileTextFieldsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogOutLinedTextField(
          hintText: "Enter username",
          label: "Username",
          textInputType: TextInputType.text,
          isValidation: true,
          onChange: (value) {},
        ),
        20.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Enter your email",
          label: "Your Email",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        20.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Enter your phone number",
          label: "Phone Number",
          textInputType: TextInputType.text,
          isValidation: true,
        )
      ],
    );
  }
}
