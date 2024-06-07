import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/header_description.dart';

class PartialOrderWarehouseDetailView extends StatelessWidget {
  const PartialOrderWarehouseDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         HeaderDescription(
          label: context.getLocale(ReceivedOrderLocale.warehouseName),
          description: "Yangon Warehouse",
        ),
        20.spacingHeight,
         HeaderDescription(
          label: context.getLocale(ReceivedOrderLocale.warehouseAddress),
          description:
              "No262, Bagayar Street, Myaynyigone, SanChaung Township Yangon",
        ),
      ],
    );
  }
}
