import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/circle_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';

import 'package:flutter/material.dart';

class ProfileHeaderView extends StatelessWidget {
  const ProfileHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.topCenter,
          children: [
            DecoratedBox(
              decoration: _profileHeaderDecoration(context),
              child: const SizedBox(
                width: double.maxFinite,
                height: 80,
              ),
            ),
            22.spacingHeight,
            const DLogCircleImage(
              path: "assets/images/sample/profile.png",
              size: 120,
            )
          ],
        ),
        30.spacingHeight,
        DLogText(
          "Ye Lin Htet",
          style: context.getTextTheme.tertiaryHeaderBold,
          color: context.getColorScheme.blackColor,
        )
      ],
    );
  }

  BoxDecoration _profileHeaderDecoration(BuildContext context) => BoxDecoration(
        color: context.getColorScheme.blackColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(50),
          bottomRight: Radius.circular(50),
        ),
      );
}
