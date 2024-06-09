import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/arrived_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/header_description.dart';

class PartialOrderReceivedDateView extends StatelessWidget {
  const PartialOrderReceivedDateView({super.key});
  @override
  Widget build(BuildContext context) {
    return  HeaderDescription(
      label: context.getLocale(ArrivedOrderLocale.receivedDate),
      description: "10/11/2024",
    );
  }
}
