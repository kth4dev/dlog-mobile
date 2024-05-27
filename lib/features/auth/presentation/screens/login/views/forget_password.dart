import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ForgetPasswordView extends StatelessWidget {
  const ForgetPasswordView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomRight,
      child: InkWell(
        onTap: () {
          context.go(AppRoute.fogotPassword);
        },
        child: DLogText(
          "Forgot Password?",
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.black.dark,
        ),
      ),
    );
  }
}
