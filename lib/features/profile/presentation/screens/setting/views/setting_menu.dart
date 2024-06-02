import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/features/profile/presentation/screens/profile/views/items/profile_menu_container.dart';
import 'package:flutter/material.dart';

class SettingMenuView extends StatelessWidget {
  const SettingMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProfileMenuContainer(text: "Language", imageIcon: "assets/images/icons/language/language-square.svg", onTap: (){},forwardIcon: DLogIcons.chevron.chevronRight,),
        10.spacingHeight,
        ProfileMenuContainer(text: "Address", imageIcon: "assets/images/icons/hicon/Bold/Location Tick.svg", onTap: (){},forwardIcon: DLogIcons.chevron.chevronRight),
      ],
    );
  }
}
