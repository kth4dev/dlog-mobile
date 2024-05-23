import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class CreateAccountDescription extends StatelessWidget {
  const CreateAccountDescription({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DLogText(
            "Let’s create an Account.",
            style: context.getTextTheme.headerBold,
            textAlign: TextAlign.center,
          ),
          20.spacingHeight,
          DLogText(
            "Lorem ipsum dolor sit amet consectetur. Euismod id quam eget sed pharetra augue. Arcu et odio sed amet arcu.",
            style: context.getTextTheme.secondaryMedium,
            textAlign: TextAlign.center,
            color: context.getColorScheme.yellow.normal,
          ),
        ],
      ),
    );
  }
}
