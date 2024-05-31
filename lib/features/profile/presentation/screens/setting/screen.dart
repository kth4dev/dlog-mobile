import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/profile/presentation/screens/setting/views/setting_menu.dart';
import 'package:flutter/material.dart';

class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DLogAppBar(title: "Setting"),
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
