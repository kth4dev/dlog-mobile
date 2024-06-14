import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/history/presentation/screens/detail/views/items/label_description.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';


class PackageDetailView extends StatelessWidget {
  const PackageDetailView({super.key});

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
          DLogText(context.getLocale(ShippingOrderLocale.packageDetail),style: context.getTextTheme.bodyBold,color: context.getColorScheme.blackColor,),
          20.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.packageName), description: "Package Name"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.howManyCarton), description: "22"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.weight), description: "34"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.length), description: "20"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.width), description: "40"),
          10.spacingHeight,
          LabelDescription(label: context.getLocale(ShippingOrderLocale.height), description: "40"),
        ],
      ),
    );
  }
}
