import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class LabelAndLoginTextField extends StatefulWidget {
  const LabelAndLoginTextField({super.key});

  @override
  State<LabelAndLoginTextField> createState() => _LabelAndLoginTextFieldState();
}

class _LabelAndLoginTextFieldState extends State<LabelAndLoginTextField> {
  late TextEditingController emailController,passwordController;

  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogOutLinedTextField(controller: emailController, label: "Username or Email", textInputType: TextInputType.text,isValidation: true,),
        20.spacingHeight,
        DLogOutLinedTextField(controller: passwordController, label: "Password", textInputType: TextInputType.text,isValidation: true,)
      ],
    );
  }
}
