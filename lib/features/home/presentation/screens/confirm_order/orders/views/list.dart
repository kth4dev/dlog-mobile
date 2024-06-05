import 'package:flutter/material.dart';
import 'items/item.dart';

class ConfirmOrderListView extends StatelessWidget {
  const ConfirmOrderListView({super.key});

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
                return const ConfirmOrderItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}