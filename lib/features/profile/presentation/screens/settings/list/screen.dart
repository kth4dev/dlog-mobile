import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/res/menu/settings.dart';
import 'package:dlog/features/profile/presentation/screens/settings/list/views/menu_list.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(ProfileLocale.settings),
      ),
      body: Padding(
        padding: _screenPadding,
        child: SettingsMenuListView(onSelect: _onSelectMenu),
      ),
    );
  }

  void _onSelectMenu(SettingsMenu menu) {
    switch (menu) {
      case SettingsMenu.language:
        context.push(AppRoute.languages);
        break;
      case SettingsMenu.address:
        //todo : navigate to address screen
        break;
    }
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
  );
}
