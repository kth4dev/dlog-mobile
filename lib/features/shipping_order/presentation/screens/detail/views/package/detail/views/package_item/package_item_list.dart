import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'items/package_item.dart';

class PackageItemListView extends StatelessWidget {
  const PackageItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 17.5, vertical: 17.5),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          )),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DLogText(context.getLocale(ShippingOrderLocale.packageItem),style: context.getTextTheme.bodyBold,color: context.getColorScheme.blackColor,),
          20.spacingHeight,
          ListView.builder(
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 2,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return const PackageItem();
            },
          ),
        ],
      ),
    );
  }
}
