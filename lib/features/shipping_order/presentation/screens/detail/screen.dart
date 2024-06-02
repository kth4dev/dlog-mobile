import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';



class ShippingOrderDetailsScreen extends StatefulWidget {
  const ShippingOrderDetailsScreen({super.key});

  @override
  State<ShippingOrderDetailsScreen> createState() => _ShippingOrderDetailsScreenState();
}

class _ShippingOrderDetailsScreenState extends State<ShippingOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DLogAppBar(title: "Shipping Order Details"),
      body: Padding(
        padding: _screenPadding,
        child: const Center(
          child: ShippingOrderDetailItemsView(),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    top: 40,
    bottom: 30,
    left: 24,
    right: 24
  );
}
