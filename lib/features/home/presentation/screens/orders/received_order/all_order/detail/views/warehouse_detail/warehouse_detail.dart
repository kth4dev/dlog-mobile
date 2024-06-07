import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'items/header_description.dart';

class AllOrderWarehouseDetailView extends StatelessWidget {
  const AllOrderWarehouseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const HeaderDescription(
          label: "Warehouse Name",
          description: "Yangon Warehouse",
        ),
        20.spacingHeight,
        const HeaderDescription(
          label: "Warehouse Location",
          description:
              "No262, Bagayar Street, Myaynyigone, SanChaung Township Yangon",
        ),
      ],
    );
  }
}
