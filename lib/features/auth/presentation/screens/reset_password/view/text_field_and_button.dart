import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/core/ui/text_fields/password_text_field.dart';
import 'package:dlog/features/auth/presentation/screens/successful_bottom_sheet/show_successful_bottom_sheet.dart';
import 'package:flutter/material.dart';

class TextFieldAndButtonView extends StatefulWidget {
  const TextFieldAndButtonView({super.key});

  @override
  State<TextFieldAndButtonView> createState() => _TextFieldAndButtonViewState();
}

class _TextFieldAndButtonViewState extends State<TextFieldAndButtonView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const DLogPasswordTextField(
          hintText: "Enter New Password",
          label: "Enter new Password",
          textInputType: TextInputType.text,
        ),
        20.spacingHeight,
        const DLogOutLinedTextField(
          hintText: "Confirm New Password",
          label: "Confirm new Password",
          textInputType: TextInputType.text,
        ),
        52.spacingHeight,
        DLogPrimaryButton(
          text: "Enter",
          onPressed: () {
            showSuccessfulBottomSheet(
                context: context,
                text: "Password Reset Successful",
                route: AppRoute.home);
          },
          width: 160,
          height: 40,
        )
      ],
    );
  }

  @override
  void dispose() {
    super.dispose();
  }
}
