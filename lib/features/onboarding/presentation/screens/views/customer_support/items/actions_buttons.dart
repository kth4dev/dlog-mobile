import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/click_button.dart';
import 'package:dlog/core/ui/button/secondary_button.dart';
import 'package:flutter/material.dart';

class CustomerSupportButtons extends StatelessWidget {
  final VoidCallback onSkip, onNext;

  const CustomerSupportButtons({
    super.key,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        DLogSecondaryButton(
          text: "Skip",
          onPressed: onSkip,
          width: 160,
          height: 40,
        ),
        22.spacingWidth,
        DLogClickButton(
          text: "Next",
          onPressed: onNext,
          width: 160,
          height: 40,
        ),
      ],
    );
  }
}
