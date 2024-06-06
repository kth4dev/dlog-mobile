import 'package:dlog/features/home/presentation/screens/confirm_order/detail/views/items/header_description.dart';
import 'package:flutter/material.dart';

class PartialOrderReceivedDateView extends StatelessWidget {
  const PartialOrderReceivedDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderDescription(
      label: "Received Date",
      description: "10/11/2024",
    );
  }
}
