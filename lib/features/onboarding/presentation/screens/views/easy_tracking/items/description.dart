import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class EasyTrackingDescription extends StatelessWidget {
  const EasyTrackingDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DLogText(
            "Easy Tracking System",
            style: context.getTextTheme.headerBold,
            textAlign: TextAlign.center,
          ),
          20.spacingHeight,
          DLogText(
            "You can track your parcel anytime, anywhere without any problem.",
            style: context.getTextTheme.secondaryMedium,
            textAlign: TextAlign.center,
            color: context.getColorScheme.yellow.normal,
          ),
        ],
      ),
    );
  }
}
