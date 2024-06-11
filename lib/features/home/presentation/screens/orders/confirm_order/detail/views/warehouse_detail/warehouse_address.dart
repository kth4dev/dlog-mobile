import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/confirm_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/header_description.dart';

class WarehouseAddressView extends StatelessWidget {
  const WarehouseAddressView({super.key});

  @override
  Widget build(BuildContext context) {
    return  HeaderDescription(
        label:context.getLocale(ConfirmOrderLocale.warehouseAddress),
        description:
            "No262, Bagayar Street, Myaynyigone, SanChaung Township Yangon");
  }
}