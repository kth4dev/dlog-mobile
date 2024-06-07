import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/delivered_order_locale.dart';
import 'package:flutter/material.dart';
import 'items/header_description.dart';

class DeliveredOrderWarehouseDetailView extends StatelessWidget {
  const DeliveredOrderWarehouseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         HeaderDescription(
          label:context.getLocale(DeliveredOrderLocale.warehouseName),
          description: "Yangon Warehouse",
        ),
        20.spacingHeight,
         HeaderDescription(
          label:context.getLocale(DeliveredOrderLocale.warehouseAddress),
          description:
              "No262, Bagayar Street, Myaynyigone, SanChaung Township Yangon",
        ),
      ],
    );
  }
}
