import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/delivered_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/items.dart';

class DeliveredOrderDetailView extends StatelessWidget {
  const DeliveredOrderDetailView({super.key});

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
              label: context.getLocale(DeliveredOrderLocale.orderNo),
              description: "Order001",
            ),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(DeliveredOrderLocale.date),
              description: "24 Apr 2024",
            ),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(DeliveredOrderLocale.fromLocation),
              description: "No112, KyiMyinDine Township, Yangon",
            ),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(DeliveredOrderLocale.toLocation),
              description: "No112, KyiMyinDine Township, Yangon",
            ),
            20.spacingHeight,
            const PackagePictures(),
            20.spacingHeight,
            const PackageMetrics(),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(DeliveredOrderLocale.customerSupplierCode),
              description: "SP001",
            ),
            20.spacingHeight,
            const WayBillPictures(),
            20.spacingHeight,
             LabelDescription(
                label: context.getLocale(DeliveredOrderLocale.orderLines), description: "filename.xml")
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
