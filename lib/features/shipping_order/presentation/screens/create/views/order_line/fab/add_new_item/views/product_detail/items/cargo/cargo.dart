import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/fab/add_new_item/views/product_detail/items/cargo/branded_cargo/branded_cargo.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/fab/add_new_item/views/product_detail/items/cargo/special_care_cargo/special_care_cargo.dart';
import 'package:flutter/material.dart';

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
