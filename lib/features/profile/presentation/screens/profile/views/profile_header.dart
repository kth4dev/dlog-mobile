import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/screens/profile/views/items/circle_image.dart';

import 'package:flutter/material.dart';

class ProfileHeaderView extends StatelessWidget {
  const ProfileHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 48),
              child: Container(
                width: double.infinity,
                height: 200,
                decoration: BoxDecoration(
                    color: context.getColorScheme.blackColor,
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(50),
                        bottomRight: Radius.circular(50))),
                child: Center(
                    child: DLogText( context.getLocale(ProfileLocale.profile),
                        style: context.getTextTheme.secondHeaderBold,
                        color: context.getColorScheme.yellow.normal)),
              ),
            ),
            22.spacingHeight,
            const CircleImage(
              imagePath: "assets/images/sample/profile.png",
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
}
