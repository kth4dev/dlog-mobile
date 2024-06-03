import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/screens/settings/list/views/setting_menu.dart';
import 'package:flutter/material.dart';

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
        child: const SettingMenuView(),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        top: 30,
        bottom: 30,
      );
}
