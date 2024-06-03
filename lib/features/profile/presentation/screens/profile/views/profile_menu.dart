import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items/profile_menu_container.dart';

class ProfileMenuView extends StatelessWidget {
  const ProfileMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ProfileMenuContainer(
          text:context.getLocale(ProfileLocale.manageProfile),
          imageIcon: "assets/images/icons/hicon/Linear/Profile Circle.svg",
          onTap: () {},
          forwardIcon: DLogIcons.chevron.chevronRight,
        ),
        10.spacingHeight,
        ProfileMenuContainer(
            text:context.getLocale(ProfileLocale.settings),
            imageIcon: "assets/images/icons/hicon/Linear/Setting.svg",
            onTap: () {
              context.push(AppRoute.setting);
            },
            forwardIcon: DLogIcons.chevron.chevronRight),
        10.spacingHeight,
        ProfileMenuContainer(
          text:context.getLocale(ProfileLocale.password),
          imageIcon: "assets/images/icons/hicon/Linear/Password 6.svg",
          onTap: () {},
          forwardIcon: DLogIcons.chevron.chevronRight,
        ),
        10.spacingHeight,
        ProfileMenuContainer(
          text:context.getLocale(ProfileLocale.logout),
          imageIcon: "assets/images/icons/hicon/Outline/Logout.svg",
          onTap: () {},
        ),
      ],
    );
  }
}
