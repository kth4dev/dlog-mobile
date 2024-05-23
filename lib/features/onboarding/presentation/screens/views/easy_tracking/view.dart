import 'package:dlog/core/images/graphic/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/features/onboarding/presentation/screens/views/easy_tracking/items/actions_buttons.dart';
import 'package:dlog/features/onboarding/presentation/screens/views/easy_tracking/items/description.dart';
import 'package:flutter/material.dart';

class EasyTrackingView extends StatelessWidget {
  final VoidCallback onSkip, onNext;

  const EasyTrackingView({
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
          const SvgImage(path: DLogGraphic.shipping, height: 342),
          const EasyTrackingDescription(),
          EasyTrackingButtons(onNext: onNext, onSkip: onSkip)
        ],
      ),
    );
  }
}
