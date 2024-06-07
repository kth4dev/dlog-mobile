import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/arrived_order_locale.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/views.dart';
class PartialOrderDetailView extends StatelessWidget {
  const PartialOrderDetailView({super.key});

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
              label: context.getLocale(ArrivedOrderLocale.orderNo),
              description: "Order001",
            ),
            20.spacingHeight,
             LabelDescription(
              label:  context.getLocale(ArrivedOrderLocale.date),
              description: "24 Apr 2024",
            ),
            20.spacingHeight,
             LabelDescription(
              label: context.getLocale(ArrivedOrderLocale.fromLocation),
              description: "No112, KyiMyinDine Township, Yangon",
            ),
            20.spacingHeight,
             LabelDescription(
              label: context.getLocale(ArrivedOrderLocale.toLocation),
              description: "No112, KyiMyinDine Township, Yangon",
            ),
            20.spacingHeight,
            const PackagePicturesView(),
            20.spacingHeight,
            const PackageMetricsView(),
            20.spacingHeight,
             LabelDescription(
              label:context.getLocale(ArrivedOrderLocale.customerSupplierCode),
              description: "SP001",
            ),
            20.spacingHeight,
            const WayBillPicturesView(),
            20.spacingHeight,
             LabelDescription(label: context.getLocale(ArrivedOrderLocale.orderLines), description: "filename.xml")
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
