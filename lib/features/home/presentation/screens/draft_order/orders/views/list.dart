import 'package:dlog/features/home/presentation/screens/draft_order/orders/views/items/item.dart';
import 'package:flutter/material.dart';

class DraftOrderListView extends StatelessWidget {
  const DraftOrderListView({super.key});

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
                return const DraftOrderItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
