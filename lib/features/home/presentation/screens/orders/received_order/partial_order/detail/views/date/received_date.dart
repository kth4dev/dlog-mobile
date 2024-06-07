import 'package:flutter/material.dart';
import 'item/header_description.dart';

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
