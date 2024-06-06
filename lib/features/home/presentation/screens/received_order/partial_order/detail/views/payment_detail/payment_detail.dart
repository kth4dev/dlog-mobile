import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/screens/confirm_order/detail/views/items/payment_detail_item.dart';
import 'package:flutter/material.dart';

class PartialOrderPaymentDetailView extends StatelessWidget {
  const PartialOrderPaymentDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Payment Details",
          style: context.getTextTheme.secondaryBold,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        const PaymentDetailItem(
          name: "No of Carton",
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
        const PaymentDetailItem(
          name: "Total Amount",
          price: "100000",
        ),
      ],
    );
  }
}
