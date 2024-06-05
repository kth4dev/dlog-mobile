import 'package:dlog/features/home/presentation/screens/confirm_order/detail/views/items/header_description.dart';
import 'package:flutter/material.dart';

class WarehouseAddressView extends StatelessWidget {
  const WarehouseAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return const HeaderDescription(
        label: "Warehouse Address",
        description:
            "No262, Bagayar Street, Myaynyigone, SanChaung Township Yangon");
  }
}
