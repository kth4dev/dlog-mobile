import 'package:dlog/features/home/presentation/screens/delivered_order/order/views/list/items/item.dart';
import 'package:flutter/material.dart';

class DeliveredOrderListView extends StatelessWidget {
  const DeliveredOrderListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const DeliveredOrderItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
