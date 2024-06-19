import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/core/ui/text_fields/password_text_field.dart';
import 'package:dlog/features/auth/presentation/res/locale/sign_up_locale.dart';
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
          context.getLocale(SignUpLocale.createAccount),
          style: context.getTextTheme.tertiaryHeaderMedium,
          color: context.getColorScheme.blackColor,
        ),
        30.spacingHeight,
         DLogOutLinedTextField(
          hintText: context.getLocale(SignUpLocale.enterCustomerNumber),
          label: context.getLocale(SignUpLocale.customerNumber),
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
         DLogOutLinedTextField(
          hintText:context.getLocale(SignUpLocale.enterUserName),
          label:context.getLocale(SignUpLocale.userName),
          textInputType: TextInputType.text,
          isEnable: true,
        ),
        10.spacingHeight,
         DLogOutLinedTextField(
          hintText:context.getLocale(SignUpLocale.enterPhoneNo),
          label: context.getLocale(SignUpLocale.phoneNo),
          textInputType: TextInputType.number,
          isEnable: true,
        ),
        10.spacingHeight,
         DLogOutLinedTextField(
          hintText:context.getLocale(SignUpLocale.enterEmail),
          label: context.getLocale(SignUpLocale.email),
          textInputType: TextInputType.text,
          isEnable: true,
        ),
        10.spacingHeight,
         DLogPasswordTextField(
          hintText:context.getLocale(SignUpLocale.enterPassword),
          label: context.getLocale(SignUpLocale.password),
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
         DLogPasswordTextField(
          hintText:context.getLocale(SignUpLocale.enterConfirmPassword),
          label:context.getLocale(SignUpLocale.confirmPassword),
          textInputType: TextInputType.text,
          isValidation: true,
        ),
        10.spacingHeight,
         DLogOutLinedTextField(
          hintText:context.getLocale(SignUpLocale.enterCustomerShippingMark),
          label: context.getLocale(SignUpLocale.customerShippingMark),
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
