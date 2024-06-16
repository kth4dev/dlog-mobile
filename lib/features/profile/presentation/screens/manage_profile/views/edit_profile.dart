import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/circle_icon.dart';
import 'package:dlog/core/ui/image/circle_image.dart';
import 'package:flutter/material.dart';

class EditProfileView extends StatelessWidget {
  final VoidCallback onSelectImage;
  const EditProfileView({super.key,required this.onSelectImage});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 120,
      height: 120,
      child: Stack(
        children: [
          const DLogCircleImage(
            path: "assets/images/sample/profile.png",
            size: 120,
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: onSelectImage,
              customBorder: const CircleBorder(),
              child: DLogCircleIcon(
                size: 40,
                iconSize: 24,
                path: DLogIcons.edit1,
                backgroundColor: context.getColorScheme.whiteColor,
                foregroundColor: context.getColorScheme.yellow.normal,
              ),
            ),
          )
        ],
      ),
    );
  }
}
