import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class DialogTextField extends StatefulWidget {
  const DialogTextField({super.key});

  @override
  State<DialogTextField> createState() => _DialogTextFieldState();
}

class _DialogTextFieldState extends State<DialogTextField> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const DLogOutLinedTextField(
            hintText: "Enter username",
            label: "User Name",
            textInputType: TextInputType.text),
        10.spacingHeight,
        const DLogOutLinedTextField(
            hintText: "Enter Address",
            label: "Address",
            textInputType: TextInputType.text),
        10.spacingHeight,
        const DLogOutLinedTextField(
            hintText: "Enter code",
            label: "Code",
            textInputType: TextInputType.text),
        10.spacingHeight,
        const DLogOutLinedTextField(
            hintText: "Enter contact person name",
            label: "Contact Person Name",
            textInputType: TextInputType.text),
        10.spacingHeight,
        const DLogOutLinedTextField(
            hintText: "Enter contact phone number",
            label: "Contact PhoneNumber",
            textInputType: TextInputType.number),
      ],
    );
  }
}
