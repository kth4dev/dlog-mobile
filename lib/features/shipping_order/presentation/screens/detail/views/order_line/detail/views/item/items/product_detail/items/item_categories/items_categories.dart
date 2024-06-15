import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/order_line/detail/views/item/items/product_detail/items/label_description/label_description.dart';

class ItemsCategories extends StatelessWidget {
  const ItemsCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return LabelDescription(label: context.getLocale(ShippingOrderLocale.itemCategories), description: "Steel Bottles");
  }
}
