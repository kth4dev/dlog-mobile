import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/history/presentation/screens/views/header/header.dart';
import 'package:dlog/features/history/presentation/screens/views/list/list.dart';
import 'package:flutter/material.dart';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({super.key});

  @override
  State<HistoryScreen> createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DLogAppBar(title: "History",),
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
    top: 20,
    bottom: 30,
  );
}
