import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ShippingOrderDetailsScreen extends StatefulWidget {
  const ShippingOrderDetailsScreen({super.key});

  @override
  State<ShippingOrderDetailsScreen> createState() =>
      _ShippingOrderDetailsScreenState();
}

class _ShippingOrderDetailsScreenState
    extends State<ShippingOrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DLogAppBar(title: "Shipping Order Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child: const ShippingOrderDetailView(),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding =>
      const EdgeInsets.only(top: 40, left: 24, right: 24,bottom: 34);
}
