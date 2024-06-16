import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/res/menu/profile.dart';
import 'package:dlog/features/profile/presentation/screens/profile/views/header.dart';
import 'package:dlog/features/profile/presentation/screens/profile/views/list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ProfileScreen extends StatefulWidget{
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(ProfileLocale.profile),
      ),
      body: Column(
        children: [
          const ProfileHeaderView(),
          30.spacingHeight,
          ProfileMenuListView(onSelect: _onSelectMenu)
        ],
      ),
    );
  }

  void _onSelectMenu(ProfileMenu menu) {
    switch (menu) {
      case ProfileMenu.manageProfile:
        context.push(AppRoute.manageProfile);
        // TODO: Handle this case.
        break;
      case ProfileMenu.settings:
        context.push(AppRoute.setting);
        // TODO: Handle this case.
        break;
      case ProfileMenu.password:
        // TODO: Handle this case.
        break;
      case ProfileMenu.logout:
        // TODO: Handle this case.
        break;
    }
  }
}
