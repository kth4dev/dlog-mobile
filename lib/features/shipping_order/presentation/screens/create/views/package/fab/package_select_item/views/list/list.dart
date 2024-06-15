import 'package:dlog/features/shipping_order/presentation/screens/create/views/package/fab/package_select_item/views/list/items/item.dart';
import 'package:flutter/material.dart';

class PackageSelectItemListView extends StatelessWidget {
  const PackageSelectItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context,index){
          return const PackageSelectItem();
        });
  }
}
