import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class OrderDetailItem extends StatelessWidget {
  final double height;
  final String orderNo;
  final String date;
  const OrderDetailItem({super.key,this.height = 62,required this.orderNo,required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      width: double.infinity,
      decoration: BoxDecoration(
       borderRadius: BorderRadius.circular(5),
        color: context.getColorScheme.yellow.normal
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DLogText(
            orderNo,
            style: context.getTextTheme.tertiaryMedium,
            color: context.getColorScheme.black.normal,
          ),
          10.spacingHeight,
          DLogText(
            date,
            style: context.getTextTheme.tertiaryMedium,
            color: context.getColorScheme.black.normal,
          ),
        ],
      ),
    );
  }
}
