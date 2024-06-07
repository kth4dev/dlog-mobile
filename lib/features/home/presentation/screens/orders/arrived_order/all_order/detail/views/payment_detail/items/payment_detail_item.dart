import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class PaymentDetailItem extends StatelessWidget {
  final String name;
  final String? value;
  final String price;
  final bool isUnread;
  final double height;
  const PaymentDetailItem({super.key,this.value,required this.name,required this.price,this.isUnread = false,this.height = 36});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      margin: const EdgeInsets.only(bottom: 5),
      alignment: Alignment.center,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: context.getColorScheme.yellow.light,
        border: Border.all(
          color: context.getColorScheme.yellow.normal
        )
      ),
      child: Row(
        children: [
          DLogText(
            name,
            style: context.getTextTheme.tertiaryRegular,
            color: context.getColorScheme.blackColor,
          ),
          const Spacer(),
          Visibility(
            visible: isUnread,
            child: DLogText(
              value ?? "",
              style: context.getTextTheme.tertiaryRegular,
              color: context.getColorScheme.blackColor,
            ),
          ),
          const Spacer(),
          DLogText(
            "$price MMK",
            style: context.getTextTheme.tertiaryRegular,
            color: context.getColorScheme.blackColor,
          ),
        ],
      ),
    );
  }
}
