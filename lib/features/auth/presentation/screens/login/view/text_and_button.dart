import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
class TextAndButton extends StatelessWidget {
  const TextAndButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: InkWell(
            onTap: (){},
            child: DLogText(
              "Forgot Password?",
              style: context.getTextTheme.tertiaryMedium,
              color: context.getColorScheme.black.dark,
            ),
          ),
        ),
        40.spacingHeight,
        DLogPrimaryButton(
          text: "Login",
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
                  context.go("/signUp");
                },
                child: DLogText("Sign Up", style: context.getTextTheme.tertiaryBold,color: context.getColorScheme.black.normal,))
          ],
        )
      ],
    );
  }
}
