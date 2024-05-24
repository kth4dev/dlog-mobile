import 'package:dlog/core/images/graphic/graphic.dart';
import 'package:dlog/core/ui/button/click_button.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/features/onboarding/presentation/screens/views/get_started/items/description.dart';
import 'package:flutter/material.dart';

class GetStartedView extends StatelessWidget {
  final VoidCallback onNext;

  const GetStartedView({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DLogSvgImage(path: DLogGraphic.orderDelivered, height: 342),
          const GetStartedDescription(),
          DLogClickButton(
            text: "Get Started",
            onPressed: onNext,
            width: 160,
            height: 40,
          ),
        ],
      ),
    );
  }
}
