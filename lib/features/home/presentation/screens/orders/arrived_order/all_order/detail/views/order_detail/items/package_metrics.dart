import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/history/presentation/res/locale/locale.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/items/label_description.dart';
import 'package:flutter/material.dart';

class PackageMetrics extends StatelessWidget {
  const PackageMetrics({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
          child: LabelDescription(
            label: context.getLocale(HistoryLocale.kg),
            description: "10kg",
            descriptionWidth: 80,
            descriptionAlignment: Alignment.center,
          ),
        ),
        21.spacingWidth,
        Expanded(
          child: LabelDescription(
            label:context.getLocale(HistoryLocale.cbm),
            description: "10CBM",
            descriptionWidth: 80,
            descriptionAlignment: Alignment.center,
          ),
        ),
        21.spacingWidth,
        Expanded(
          child: LabelDescription(
            label: context.getLocale(HistoryLocale.noOfCarton),
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
