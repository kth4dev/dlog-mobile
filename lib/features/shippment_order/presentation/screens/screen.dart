import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/shippment_order/presentation/screens/view/button.dart';
import 'package:dlog/features/shippment_order/presentation/screens/view/empty_shippment_order.dart';
import 'package:dlog/features/shippment_order/presentation/screens/view/header.dart';
import 'package:dlog/features/shippment_order/presentation/screens/view/shippment_order_list.dart';
import 'package:flutter/material.dart';


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
