import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/details.dart';
import 'package:flutter/material.dart';

class ExpansionTileItem extends StatelessWidget {
  const ExpansionTileItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      minTileHeight: 0,
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      tilePadding: const EdgeInsets.all(0),
      trailing: DLogText(
        "Details>>",
        style: context.getTextTheme.tertiaryRegular,
        color: context.getColorScheme.blackColor,
      ),
      title: const DLogText(""),
      children: const [
        ShippingOrderDetailView(),
      ],
    );
  }
}
