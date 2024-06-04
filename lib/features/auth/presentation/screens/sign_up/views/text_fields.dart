import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/core/ui/text_fields/password_text_field.dart';
import 'package:flutter/material.dart';

class SingUpTextFieldsView extends StatefulWidget {
  const SingUpTextFieldsView({super.key});

  @override
  State<SingUpTextFieldsView> createState() => _SingUpTextFieldsViewState();
}

class _SingUpTextFieldsViewState extends State<SingUpTextFieldsView> {
  @override
  void initState() {
    super.initState();
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
        const DLogOutLinedTextField(
          hintText: "Enter Customer Name",
          label: "Customer Number",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Enter User Name",
          label: "User Name",
          textInputType: TextInputType.text,
          isEnable: true,
        ),
        10.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Enter Phone Number",
          label: "Phone no",
          textInputType: TextInputType.number,
          isEnable: true,
        ),
        10.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Enter Email",
          label: "Email",
          textInputType: TextInputType.text,
          isEnable: true,
        ),
        10.spacingHeight,
        const DLogPasswordTextField(
          hintText: "Enter Password",
          label: "Password",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
        const DLogPasswordTextField(
          hintText: "Enter Confirm Password",
          label: "Confirm Password",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Enter Customer Shipping Mark",
          label: "Customer Shipping Mark",
          textInputType: TextInputType.text,
          isValidation: true,
        ),
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
