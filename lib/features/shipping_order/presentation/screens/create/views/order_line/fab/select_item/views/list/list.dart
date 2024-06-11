import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/fab/select_item/views/list/items/item.dart';
import 'package:flutter/material.dart';

class SelectItemListView extends StatelessWidget {
  const SelectItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return const SelectItem();
        });
  }
}