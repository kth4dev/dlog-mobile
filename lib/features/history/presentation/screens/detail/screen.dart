import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ShippingOrderHistoryDetailsScreen extends StatefulWidget {
  const ShippingOrderHistoryDetailsScreen({super.key});

  @override
  State<ShippingOrderHistoryDetailsScreen> createState() =>
      _ShippingOrderHistoryDetailsScreenState();
}

class _ShippingOrderHistoryDetailsScreenState
    extends State<ShippingOrderHistoryDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DLogAppBar(title: "History Details"),
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child: const ShippingOrderHistoryDetailView(),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding =>
      const EdgeInsets.only(top: 30, left: 24, right: 24,bottom: 30);
}
