import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AddItem extends StatelessWidget {
  const AddItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.push(AppRoute.addNewItem);
      },
      child: Container(
        height: 44,
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          ),
          color: context.getColorScheme.whiteColor
        ),
        child: Icon(
          Icons.add,
          color: context.getColorScheme.yellow.normal,
          size: 24,
        ),
      ),
    );
  }
}
