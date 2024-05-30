import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class DialogTextField extends StatefulWidget {
  const DialogTextField({super.key});

  @override
  State<DialogTextField> createState() => _DialogTextFieldState();
}

class _DialogTextFieldState extends State<DialogTextField> {
  late TextEditingController userNameController,addressController,codeController,contactPersonNameController,contactPhoneNoController;

  @override
  void initState() {
    userNameController = TextEditingController();
    addressController = TextEditingController();
    codeController = TextEditingController();
    contactPersonNameController = TextEditingController();
    contactPhoneNoController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    userNameController.dispose();
    addressController.dispose();
    codeController.dispose();
    contactPhoneNoController.dispose();
    contactPhoneNoController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogOutLinedTextField(hintText: "Enter username", controller: userNameController, label: "User Name", textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(hintText: "Enter Address", controller: addressController, label: "Address", textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(hintText: "Enter code", controller: codeController, label: "Code", textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(hintText: "Enter contact person name", controller: contactPersonNameController, label: "Contact Person Name", textInputType: TextInputType.text),
        10.spacingHeight,
        DLogOutLinedTextField(hintText: "Enter contact phone number", controller: contactPhoneNoController, label: "Contact Phone Number", textInputType: TextInputType.number),
      ],
    );
  }
}
