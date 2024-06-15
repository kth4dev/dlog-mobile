import 'package:flutter/material.dart';

import 'branded_cargo/branded_cargo.dart';
import 'special_care_cargo/special_care_cargo.dart';

class Cargo extends StatelessWidget {
  const Cargo({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BrandedCargo(),
        SpecialCareCargo(),
      ],
    );
  }
}
