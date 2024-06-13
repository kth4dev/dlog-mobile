import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/order_line/detail/views/item/items/product_detail/items/label_description/label_description.dart';


class ProductName extends StatelessWidget {
  const ProductName({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
       LabelDescription(label: context.getLocale(ShippingOrderLocale.productNameOfEnglish), description: "Bottle"),
        10.spacingHeight,
        LabelDescription(label: context.getLocale(ShippingOrderLocale.productNameOfChinese), description: ""),
        10.spacingHeight,
        LabelDescription(label: context.getLocale(ShippingOrderLocale.productNameOfMyanmar), description: "ပုလင်း"),
      ],
    );
  }
}
