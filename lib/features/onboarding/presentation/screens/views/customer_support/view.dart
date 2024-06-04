import 'package:dlog/core/images/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/features/onboarding/presentation/screens/views/customer_support/items/actions_buttons.dart';
import 'package:dlog/features/onboarding/presentation/screens/views/customer_support/items/description.dart';
import 'package:flutter/material.dart';

class CustomerSupportView extends StatelessWidget {
  final VoidCallback onSkip, onNext;

  const CustomerSupportView({
    super.key,
    required this.onNext,
    required this.onSkip,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DLogSvgImage(path: DLogGraphic.digitalCustomerService, height: 342),
          const CustomerSupportDescription(),
          CustomerSupportButtons(onNext: onNext, onSkip: onSkip)
        ],
      ),
    );
  }
}
