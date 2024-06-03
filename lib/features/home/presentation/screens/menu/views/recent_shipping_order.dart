import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/screens/menu/views/items/recent_shipping_order_header.dart';
import 'package:dlog/features/shipping_order/presentation/screens/orders/views/list/items/item.dart';
import 'package:flutter/material.dart';

class RecentShippingOrderView extends StatelessWidget {
  const RecentShippingOrderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const RecentShippingOrderHeader(),
        20.spacingHeight,
        const ShippingOrderItem(),
      ],
    );
  }
}
