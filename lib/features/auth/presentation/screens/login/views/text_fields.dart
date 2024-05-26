import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class LoginTextFieldsView extends StatefulWidget {
  const LoginTextFieldsView({super.key});

  @override
  State<LoginTextFieldsView> createState() => _LoginTextFieldsViewState();
}

class _LoginTextFieldsViewState extends State<LoginTextFieldsView> {
  late TextEditingController emailController, passwordController;

  @override
  void initState() {
    super.initState();
    emailController = TextEditingController();
    passwordController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogOutLinedTextField(
          controller: emailController,
          label: "Username or Email",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        20.spacingHeight,
        DLogOutLinedTextField(
          controller: passwordController,
          label: "Password",
          textInputType: TextInputType.text,
          isValidation: true,
        )
      ],
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
}
