import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/arrived_order_locale.dart';
import 'package:dlog/features/home/presentation/res/menu/arrived_order.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views/views.dart';

class ArrivedOrderMenuScreen extends StatefulWidget {
  const ArrivedOrderMenuScreen({super.key});

  @override
  State<ArrivedOrderMenuScreen> createState() => _ArrivedOrderMenuScreenState();
}

class _ArrivedOrderMenuScreenState extends State<ArrivedOrderMenuScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  DLogAppBar(title: context.getLocale(ArrivedOrderLocale.arrivedOrder)),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ArrivedOrderHeaderView(),
            30.spacingHeight,
            ArrivedOrderMenuListView(onSelect: _onSelectMenu)
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

  void _onSelectMenu(ArrivedOrderMenu menu) {
    switch (menu) {
      case ArrivedOrderMenu.partialOrder:
        context.push(AppRoute.arrivedPartialOrder);
        break;
      case ArrivedOrderMenu.allOrder:
        context.push(AppRoute.arrivedAllOrder);
        break;
    }
  }
}
