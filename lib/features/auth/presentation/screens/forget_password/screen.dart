import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views/views.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({super.key});

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DLogAppBar(),
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          children: [
            const HeaderView(),
            20.spacingHeight,
            const DescriptionView(),
            30.spacingHeight,
            TextFieldAndButtonView(
              onEnter: _enter,
            ),
          ],
        ),
      ),
    );
  }

  void _enter() {
    context.push(AppRoute.verify);
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 40,
        bottom: 38,
      );
}
