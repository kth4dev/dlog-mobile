import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/way_bill_pictures.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/package_metrics.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/package_pictures.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/items/label_and_text_field.dart';
import 'package:flutter/material.dart';

class ShippingOrderDetailItemsView extends StatelessWidget {
  const ShippingOrderDetailItemsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:_screenPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: context.getColorScheme.yellow.light,
          border: Border.all(
              color: context.getColorScheme.yellow.normal
          )
      ),
      child: Column(
        children: [
          const LabelAndTextField(label: "Order No", text: "Order001"),
          20.spacingHeight,
          const LabelAndTextField(label: "Order Date", text: "24 Apr 2024"),
          20.spacingHeight,
          const LabelAndTextField(label: "From Location", text: "No112, KyiMyinDine Township, Yangon"),
          20.spacingHeight,
          const LabelAndTextField(label: "To Location", text: "No112, KyiMyinDine Township, Yangon"),
          20.spacingHeight,
          const PackagePicturesView(),
          20.spacingHeight,
          const PackageMetricsView(),
          20.spacingHeight,
          const LabelAndTextField(label: "Customer’s Supplier Code", text: "SP001"),
          20.spacingHeight,
          const WayBillPicturesView(),
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 30,
    right: 30,
    top: 20,
    bottom: 20,
  );
}
