import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/history/presentation/res/locale/locale.dart';
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
      appBar:DLogAppBar(title:context.getLocale(HistoryLocale.historyDetail)),
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
