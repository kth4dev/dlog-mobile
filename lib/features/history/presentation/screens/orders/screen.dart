import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/history/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: DLogAppBar(title: context.getLocale(HistoryLocale.history)),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          children: [
            const ShippingOrderHistoryHeaderView(),
            22.spacingHeight,
            const ShippingOrderHistoryListView()
          ],
        ),
      )
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}
