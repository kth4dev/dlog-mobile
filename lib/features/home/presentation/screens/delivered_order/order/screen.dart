import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/screens/delivered_order/order/views/header/header.dart';
import 'package:dlog/features/home/presentation/screens/delivered_order/order/views/list/list.dart';
import 'package:flutter/material.dart';

class DeliveredOrderListScreen extends StatefulWidget {
  const DeliveredOrderListScreen({super.key});

  @override
  State<DeliveredOrderListScreen> createState() => _DeliveredOrderListScreenState();
}

class _DeliveredOrderListScreenState extends State<DeliveredOrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DLogAppBar(title: "Delivered Orders"),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DeliveredOrderHeaderView(),
            20.spacingHeight,
            const DeliveredOrderListView(),
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
}
