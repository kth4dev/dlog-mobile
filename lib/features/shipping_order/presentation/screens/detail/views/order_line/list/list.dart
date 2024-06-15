import 'package:flutter/material.dart';

import 'items/item.dart';

class OrderLineListView extends StatelessWidget {
  const OrderLineListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return const OrderLineItem();
        });
  }
}
