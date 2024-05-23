import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class CustomerSupportDescription extends StatelessWidget {
  const CustomerSupportDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DLogText(
            "Customer Support",
            style: context.getTextTheme.headerBold,
            textAlign: TextAlign.center,
          ),
          62.spacingHeight,
          DLogText(
            "24/7 reliable customer service regarding any kind of issues in ordering.",
            style: context.getTextTheme.secondaryMedium,
            textAlign: TextAlign.center,
            color: context.getColorScheme.yellow.normal,
          ),
        ],
      ),
    );
  }
}
