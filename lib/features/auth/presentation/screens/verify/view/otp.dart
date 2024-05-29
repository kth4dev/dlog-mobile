import 'dart:async';

import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

class OtpView extends StatefulWidget {
  const OtpView({super.key});

  @override
  State<OtpView> createState() => _OtpViewState();
}

class _OtpViewState extends State<OtpView> {
  late TextEditingController otpController;
  int timerSeconds = 60;
  late Timer timer;

  @override
  void initState() {
    otpController = TextEditingController();
    otpController.addListener(() {
      _goNextPage();
    });
    _startTimer();
    super.initState();
  }

  @override
  void dispose() {
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Pinput(
          defaultPinTheme: PinTheme(
              width: 40,
              height: 50,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  border:
                      Border.all(color: context.getColorScheme.yellow.normal))),
          controller: otpController,
          length: 6,
          textInputAction: TextInputAction.go,
          closeKeyboardWhenCompleted: true,
        ),
        40.spacingHeight,
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DLogText(
              "Resend code again in ",
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.blackColor,
            ),
            DLogText(
              "$timerSeconds s",
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.yellow.normal,
            ),
          ],
        )
      ],
    );
  }

  void _startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (timerSeconds > 0) {
          timerSeconds--;
        } else {
          timer.cancel(); // Stop the timer when it reaches 0
        }
      });
    });
  }

  void _goNextPage() {
    if (otpController.text.length == 6) {
      //context.go(AppRoute.login);
    }
  }
}
