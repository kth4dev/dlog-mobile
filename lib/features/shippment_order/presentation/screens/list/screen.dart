import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'view/views.dart';


class ShippmentOrderScreen extends StatefulWidget {
  const ShippmentOrderScreen({super.key});

  @override
  State<ShippmentOrderScreen> createState() => _ShippmentOrderScreenState();
}

class _ShippmentOrderScreenState extends State<ShippmentOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DLogAppBar(title: "Shippment Order"),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          children: [
            const ShippmentOrderHeaderView(),
            20.spacingHeight,
            const ShippmentOrderListView(),
          ],
        ),
      ),
      floatingActionButton: const FloatingActionButtonView(),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 20,
    bottom: 30,
  );
}
