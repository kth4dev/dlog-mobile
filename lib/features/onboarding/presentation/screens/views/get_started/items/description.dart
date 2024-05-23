import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class GetStartedDescription extends StatelessWidget {
  const GetStartedDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DLogText(
            "Get’s your Parcel more Safety",
            style: context.getTextTheme.headerBold,
            textAlign: TextAlign.center,
          ),
          20.spacingHeight,
          DLogText(
            "Ship and track parcels and package learn about our express courier services.",
            style: context.getTextTheme.secondaryMedium,
            textAlign: TextAlign.center,
            color: context.getColorScheme.yellow.normal,
          ),
        ],
      ),
    );
  }
}
