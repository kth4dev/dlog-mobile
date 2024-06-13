import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogPrimaryButton(
      text:context.getLocale(DraftOrderLocale.create),
      onPressed: () {},
      width: 160,
      height: 40,
    );
  }
}
