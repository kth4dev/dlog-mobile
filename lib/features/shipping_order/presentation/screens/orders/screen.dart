import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';


class ShippingOrderScreen extends StatefulWidget {
  const ShippingOrderScreen({super.key});

  @override
  State<ShippingOrderScreen> createState() => _ShippingOrderScreenState();
}

class _ShippingOrderScreenState extends State<ShippingOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DLogAppBar(title: "Shipping Order"),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          children: [
            const ShippingOrderHeaderView(),
            20.spacingHeight,
            const ShippingOrderListView(), // todo : add bloc provider
          ],
        ),
      ),
      floatingActionButton: const ShippingOrderFABView(),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 20,
    bottom: 30,
  );
}
