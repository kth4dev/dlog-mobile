import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/confirm_order_locale.dart';
import 'package:flutter/material.dart';
import 'package:dlog/features/home/presentation/screens/orders/confirm_order/detail/views/order_detail/items/label_description.dart';

class PackageMetrics extends StatelessWidget {
  const PackageMetrics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
         Expanded(
           child: LabelDescription(
            label: context.getLocale(ConfirmOrderLocale.kg),
            description: "10kg",
            descriptionWidth: 80,
            descriptionAlignment: Alignment.center,
                   ),
         ),
        21.spacingWidth,
         Expanded(
           child: LabelDescription(
            label:context.getLocale(ConfirmOrderLocale.cbm),
            description: "10CBM",
            descriptionWidth: 80,
            descriptionAlignment: Alignment.center,
                   ),
         ),
        21.spacingWidth,
         Expanded(
           child: LabelDescription(
            label: context.getLocale(ConfirmOrderLocale.noOfCarton),
            description: "10",
            descriptionWidth: 80,
            descriptionAlignment: Alignment.center,
             overflow: TextOverflow.ellipsis,
             labelWidth: 80,
                   ),
         )
      ],
    );
  }
}
