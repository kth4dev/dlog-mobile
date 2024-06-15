import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/delivered_order_locale.dart';
import 'package:flutter/material.dart';

import 'label_description.dart';

class PackageMetrics extends StatelessWidget {
  const PackageMetrics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: LabelDescription(
            label: context.getLocale(DeliveredOrderLocale.kg),
            description: "10kg",
            descriptionWidth: 80,
            descriptionAlignment: Alignment.center,
          ),
        ),
        21.spacingWidth,
        Expanded(
          child: LabelDescription(
            label:context.getLocale(DeliveredOrderLocale.cbm),
            description: "10CBM",
            descriptionWidth: 80,
            descriptionAlignment: Alignment.center,
          ),
        ),
        21.spacingWidth,
        Expanded(
          child: LabelDescription(
            label: context.getLocale(DeliveredOrderLocale.noOfCarton),
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
