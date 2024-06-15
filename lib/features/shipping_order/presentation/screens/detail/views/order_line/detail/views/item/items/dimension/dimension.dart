import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'items/dimension_item.dart';

class DimensionView extends StatelessWidget {
  const DimensionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.getColorScheme.yellow.light,
          border: Border.all(
              color: context.getColorScheme.yellow.normal
          )
      ),
      child: ExpansionTile(
        shape:  RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide.none,
        ),
        title: DLogText(context.getLocale(ShippingOrderLocale.dimension)),
        children:  [
          Divider(
            color: context.getColorScheme.grey.lightActive,
          ),
         const DimensionItem(),
        ],
      ),
    );
  }
}
