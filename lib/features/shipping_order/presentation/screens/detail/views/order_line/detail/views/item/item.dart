import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

import 'items/dimension/dimension.dart';
import 'items/product_detail/product_detail.dart';

class ItemView extends StatelessWidget {
  const ItemView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17.5,vertical: 17.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          )
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DLogText("Item",style: context.getTextTheme.bodyBold,color: context.getColorScheme.blackColor,),
          20.spacingHeight,
          const ProductDetailView(),
          10.spacingHeight,
          const DimensionView(),
        ],
      ),
    );
  }
}
