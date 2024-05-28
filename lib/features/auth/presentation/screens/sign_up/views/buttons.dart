import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/auth/presentation/screens/successful_bottom_sheet/show_successful_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SignUpAndLoginView extends StatelessWidget {
  const SignUpAndLoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogPrimaryButton(
          text: "Sign Up",
          onPressed: () async{
             showSuccessfulBottomSheet(context: context, text: "Signup Successful",route: AppRoute.login);
          },
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
