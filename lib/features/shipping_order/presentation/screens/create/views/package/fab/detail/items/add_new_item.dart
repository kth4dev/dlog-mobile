import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

class AddNewItem extends StatelessWidget {
  const AddNewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 7.5),
      decoration: BoxDecoration(
        color: context.getColorScheme.yellow.light,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          color: context.getColorScheme.yellow.normal,
        )
      ),
      child: Icon(Icons.add,color: context.getColorScheme.grey.normalHover,),
    );
  }
}
