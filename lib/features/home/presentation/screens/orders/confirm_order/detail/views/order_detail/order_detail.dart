import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/confirm_order_locale.dart';
import 'package:dlog/features/home/presentation/screens/orders/confirm_order/detail/views/order_detail/items/expansion_tile_detail.dart';
import 'package:flutter/material.dart';
import 'items/order_detail_item.dart';

class OrderDetailView extends StatelessWidget {
  const OrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(ConfirmOrderLocale.orderDetail),
          style: context.getTextTheme.secondaryBold,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        Container(
          padding: _screenPadding,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: context.getColorScheme.yellow.normal)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               OrderDetailItem(
                orderNo: '${context.getLocale(ConfirmOrderLocale.orderNo)}: DL0001',
                date: '${context.getLocale(ConfirmOrderLocale.date)}: 03/04/2024',
              ),
              //10.spacingHeight,
              ExpansionTile(
                minTileHeight: 0,
                shape: const RoundedRectangleBorder(side: BorderSide.none),
                tilePadding: const EdgeInsets.all(0),
                trailing: DLogText(
                  "${context.getLocale(ConfirmOrderLocale.detail)}>>",
                  style: context.getTextTheme.tertiaryRegular,
                  color: context.getColorScheme.blackColor,
                ),
                title: const DLogText(""),
                children: const [
                  ExpansionTileDetailItem(),
                ],
              )
            ],
          ),
        )
      ],
    );
  }

  EdgeInsets get _screenPadding =>
      const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10);
}
