import 'package:flutter/material.dart';
import 'item/header_description.dart';

class DeliveredOrderReceivedDateView extends StatelessWidget {
  const DeliveredOrderReceivedDateView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderDescription(
      label: "Received Date",
      description: "10/11/2024",
    );
  }
}
