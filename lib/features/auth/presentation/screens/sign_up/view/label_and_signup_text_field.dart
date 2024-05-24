import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class LabelAndSignUpTextField extends StatefulWidget {
  const LabelAndSignUpTextField({super.key});

  @override
  State<LabelAndSignUpTextField> createState() => _LabelAndSignUpTextFieldState();
}

class _LabelAndSignUpTextFieldState extends State<LabelAndSignUpTextField> {
  late TextEditingController customerNumberController,
      userNameController,
      phoneNumberController,
      emailController,
      passwordController,
      confirmPasswordController,
      customerShippingMarkController;

  @override
  void initState() {
    customerNumberController = TextEditingController();
    userNameController = TextEditingController();
    phoneNumberController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    confirmPasswordController = TextEditingController();
    customerShippingMarkController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    customerNumberController.dispose();
    userNameController.dispose();
    phoneNumberController.dispose();
    emailController.dispose();
    passwordController.dispose();
    confirmPasswordController.dispose();
    customerShippingMarkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Create an Account",
          style: context.getTextTheme.tertiaryHeaderMedium,
          color: context.getColorScheme.blackColor,
        ),
        30.spacingHeight,
        DLogOutLinedTextField(
          controller: customerNumberController,
          label: "Customer Number",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          controller: userNameController,
          label: "User Name",
          textInputType: TextInputType.text,
          isEnable: true,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          controller: phoneNumberController,
          label: "Phone no",
          textInputType: TextInputType.number,
          isEnable: true,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          controller: emailController,
          label: "Email",
          textInputType: TextInputType.text,
          isEnable: true,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          controller: passwordController,
          label: "Password",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          controller: confirmPasswordController,
          label: "Confirm Password",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
        DLogOutLinedTextField(
          controller: customerShippingMarkController,
          label: "Customer Shipping Mark",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
      ],
    );
  }
}
