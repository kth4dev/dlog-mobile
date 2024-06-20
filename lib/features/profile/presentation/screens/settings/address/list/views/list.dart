import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import 'items/item.dart';

class AddressListView extends StatelessWidget {
  const AddressListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 3,
        itemBuilder: (context,index){
          return Container(
            margin: const EdgeInsets.only(bottom: 10),
           padding: _screenPadding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
                color:context.getColorScheme.yellow.light,
                border: Border.all(
                    color: context.getColorScheme.yellow.normal
                )
            ),
            child: const AddressListItem()
          );
        });
  }

  EdgeInsets get _screenPadding => const EdgeInsets.symmetric(
    horizontal: 20,
    vertical: 26
  );
}
