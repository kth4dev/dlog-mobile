import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../../../../../../core/ui/button/primary_button.dart';
import '../../../../../../core/ui/text/dlog_text.dart';

class TextAndSignUpButton extends StatelessWidget {
  const TextAndSignUpButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogPrimaryButton(
          text: "Sign Up",
          onPressed: () {},
          width: 160,
          height: 40,
        ),
        20.spacingHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLogText("Don't have an account?", style: context.getTextTheme.tertiaryRegular,color:context.getColorScheme.grey.normalActive),
            5.spacingWidth,
            InkWell(
                onTap:(){
                  context.go("/login");
                },
                child: DLogText("Login", style: context.getTextTheme.tertiaryBold,color: context.getColorScheme.black.normal,))
          ],
        )
      ],
    );
  }
}
