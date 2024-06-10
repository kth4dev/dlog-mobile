import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'items/items.dart';

class ShippingOrderDetailView extends StatelessWidget {
  const ShippingOrderDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 8,
      child: Container(
        padding: _screenPadding,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: context.getColorScheme.yellow.light,
          border: Border.all(
            color: context.getColorScheme.yellow.normal,
          ),
        ),
        child: Column(
          children: [
             LabelDescription(
              label:context.getLocale(ShippingOrderLocale.detail),
              description: "Order001",
            ),
            20.spacingHeight,
             LabelDescription(
              label: context.getLocale(ShippingOrderLocale.date),
              description: "24 Apr 2024",
            ),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(ShippingOrderLocale.fromLocation),
              description: "No112, KyiMyinDine Township, Yangon",
            ),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(ShippingOrderLocale.toLocation),
              description: "No112, KyiMyinDine Township, Yangon",
            ),
            20.spacingHeight,
            const PackagePicturesView(),
            20.spacingHeight,
            const PackageMetricsView(),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(ShippingOrderLocale.customerSupplierCode),
              description: "SP001",
            ),
            20.spacingHeight,
            const WayBillPicturesView(),
            20.spacingHeight,
             LabelDescription(label: context.getLocale(ShippingOrderLocale.orderLines), description: "filename.xml")
          ],
        ),
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
