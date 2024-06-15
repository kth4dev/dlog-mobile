import 'package:flutter/material.dart';

import 'items/item.dart';

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
