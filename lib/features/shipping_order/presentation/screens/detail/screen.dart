import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'views/details.dart';


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
      appBar:  DLogAppBar(title: context.getLocale(ShippingOrderLocale.detail)),
      body: const ShippingOrderDetailView(),
    );
  }
}
