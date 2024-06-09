import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/core/ui/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

class LoginTextFieldsView extends StatefulWidget {
  const LoginTextFieldsView({super.key});

  @override
  State<LoginTextFieldsView> createState() => _LoginTextFieldsViewState();
}

class _LoginTextFieldsViewState extends State<LoginTextFieldsView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogOutLinedTextField(
          hintText: "Enter username or phone number",
          label: "Username or Email",
          textInputType: TextInputType.text,
          isValidation: true,
          onChange: (value) {},
        ),
        20.spacingHeight,
        const DLogPasswordTextField(
          hintText: "Enter Password",
          label: "Password",
          textInputType: TextInputType.text,
          isValidation: true,
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
