import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/screens/confirm_order/detail/views/items/header_description.dart';
import 'package:flutter/material.dart';

class PartialOrderWarehouseDetailView extends StatelessWidget {
  const PartialOrderWarehouseDetailView({super.key});

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
