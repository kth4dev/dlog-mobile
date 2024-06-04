import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  DLogAppBar(title: context.getLocale(HomeLocale.notification)),
      body: Padding(
        padding: _screenPadding,
        child: const NotificationListView(),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}
