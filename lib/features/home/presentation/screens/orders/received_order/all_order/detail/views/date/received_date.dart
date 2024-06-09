import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';
import 'item/header_description.dart';

class AllOrderReceivedDateView extends StatelessWidget {
  const AllOrderReceivedDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return  HeaderDescription(
      label: context.getLocale(ReceivedOrderLocale.receivedDate),
      description: "10/11/2024",
    );
  }
}
