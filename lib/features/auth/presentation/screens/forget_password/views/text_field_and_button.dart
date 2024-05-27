import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class TextFieldAndButtonView extends StatefulWidget {
  const TextFieldAndButtonView({super.key});

  @override
  State<TextFieldAndButtonView> createState() => _TextFieldAndButtonViewState();
}

class _TextFieldAndButtonViewState extends State<TextFieldAndButtonView> {
  late TextEditingController emailController;

  @override
  void initState() {
    emailController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogOutLinedTextField(
          controller: emailController,
          label: "Enter Phone no or email",
          textInputType: TextInputType.text,
        ),
        50.spacingHeight,
        DLogPrimaryButton(
          text: "Enter",
          onPressed: () {},
          width: 160,
          height: 40,
        )
      ],
    );
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
}
