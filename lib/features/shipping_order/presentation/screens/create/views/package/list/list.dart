import 'package:dlog/features/shipping_order/presentation/screens/create/views/package/list/items/item.dart';
import 'package:flutter/material.dart';

class PackageListView extends StatelessWidget {
  const PackageListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        physics: const NeverScrollableScrollPhysics(),
        itemCount: 3,
        shrinkWrap: true,
        itemBuilder: (context,index){
      return const PackageItem();
    });
  }
}
