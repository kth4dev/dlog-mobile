import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:dlog/features/home/presentation/res/menu/received_order.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views/views.dart';

class ReceivedOrderMenuScreen extends StatefulWidget {
  const ReceivedOrderMenuScreen({super.key});

  @override
  State<ReceivedOrderMenuScreen> createState() => _ReceivedOrderMenuScreenState();
}

class _ReceivedOrderMenuScreenState extends State<ReceivedOrderMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:DLogAppBar(title: context.getLocale(ReceivedOrderLocale.receivedOrder)),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ReceivedOrderMenuHeaderView(),
            30.spacingHeight,
            ReceivedOrderMenuListView(onSelect: _onSelectMenu)
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 30,
        bottom: 30,
      );

  void _onSelectMenu(ReceivedOrderMenu menu) {
    switch (menu) {
      case ReceivedOrderMenu.partialOrder:
        context.push(AppRoute.receivedPartialOrder);
        break;
      case ReceivedOrderMenu.allOrder:
        context.push(AppRoute.receivedAllOrder);
        break;
    }
  }
}
