import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/delivered_order_locale.dart';
import 'package:flutter/material.dart';
import 'item/header_description.dart';

class DeliveredOrderReceivedDateView extends StatelessWidget {
  const DeliveredOrderReceivedDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return  HeaderDescription(
      label:context.getLocale(DeliveredOrderLocale.receivedDate),
      description: "10/11/2024",
    );
  }
}
