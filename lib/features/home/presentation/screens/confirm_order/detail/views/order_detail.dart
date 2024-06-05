import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/screens/confirm_order/detail/views/items/expansion_tile_item.dart';
import 'package:dlog/features/home/presentation/screens/confirm_order/detail/views/items/order_detail_item.dart';
import 'package:flutter/material.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Order Details",
          style: context.getTextTheme.secondaryBold,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        Container(
          padding: _screenPadding,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: context.getColorScheme.yellow.normal)),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              OrderDetailItem(
                orderNo: 'Order No: DL0001',
                date: 'Date: 03/04/2024',
              ),
              //10.spacingHeight,
              ExpansionTileItem(),
            ],
          ),
        )
      ],
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(top: 10,left: 10,right: 10,bottom: 10);
}
