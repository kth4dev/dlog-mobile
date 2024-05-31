import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/features/profile/presentation/screens/profile/views/items/profile_menu_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileMenuView extends StatelessWidget {
  const ProfileMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProfileMenuContainer(text: "Manage Profile", imageIcon: "assets/images/icons/hicon/Linear/Profile Circle.svg", onTap: (){},forwardIcon: DLogIcons.chevron.chevronRight),
        10.spacingHeight,
        ProfileMenuContainer(text: "Setting", imageIcon: "assets/images/icons/hicon/Linear/Setting.svg", onTap: (){
          context.push(AppRoute.setting);
        },forwardIcon: DLogIcons.chevron.chevronRight),
        10.spacingHeight,
        ProfileMenuContainer(text: "Password", imageIcon: "assets/images/icons/hicon/Linear/Password 6.svg", onTap: (){},forwardIcon: DLogIcons.chevron.chevronRight),
        10.spacingHeight,
        ProfileMenuContainer(text: "Logout", imageIcon: "assets/images/icons/hicon/Outline/Logout.svg", onTap: (){},),
      ],
    );
  }
}
