import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/auth/presentation/res/locale/verify_locale.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(context.getLocale(VerifyLocale.verifyCode),style: context.getTextTheme.secondHeaderMedium,color: context.getColorScheme.black.normal,),
        30.spacingHeight,
        DLogText(context.getLocale(VerifyLocale.enterCodePrompt),style: context.getTextTheme.bodyMedium,color: context.getColorScheme.blackColor,)
      ],
    );
  }
}
