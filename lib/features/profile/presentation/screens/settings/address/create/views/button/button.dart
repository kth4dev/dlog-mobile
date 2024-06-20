import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class ButtonView extends StatelessWidget {
  const ButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogPrimaryButton(
      text: context.getLocale(ProfileLocale.save),
      onPressed: () {},
      width: 160,
      height: 40,
    );
  }
}
