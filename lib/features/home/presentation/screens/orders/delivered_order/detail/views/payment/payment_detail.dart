import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/delivered_order_locale.dart';
import 'package:flutter/material.dart';

import 'item/payment_detail_item.dart';

class DeliveredOrderPaymentDetailView extends StatelessWidget {
  const DeliveredOrderPaymentDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(DeliveredOrderLocale.paymentDetail),
          style: context.getTextTheme.secondaryBold,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
         PaymentDetailItem(
          name: context.getLocale(DeliveredOrderLocale.noOfCarton),
          price: "10000",
          value: "10 * price",
          isUnread: true,
        ),
        ListView.builder(
          itemCount: 3,
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return const PaymentDetailItem(name: "Name", price: "10000");
          },
        ),
        5.spacingHeight,
         PaymentDetailItem(
          name: context.getLocale(DeliveredOrderLocale.totalAmount),
          price: "100000",
        ),
      ],
    );
  }
}
