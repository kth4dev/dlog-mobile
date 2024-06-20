import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class LandmarkView extends StatelessWidget {
  const LandmarkView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogOutLinedTextField(
      hintText: context.getLocale(ProfileLocale.enterLandmark),
      label: context.getLocale(ProfileLocale.landmark),
      textInputType: TextInputType.text,
    );
  }
}
