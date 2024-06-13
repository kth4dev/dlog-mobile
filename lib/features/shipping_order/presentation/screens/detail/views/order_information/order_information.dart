import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'items/items.dart';

class OrderInformationView extends StatelessWidget {
  const OrderInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderView(),
            20.spacingHeight,
            Material(
              elevation: 8,
              child: Container(
                padding: _containerScreenPadding,
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
            ),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _containerScreenPadding => const EdgeInsets.only(
    left: 30,
    right: 30,
    top: 20,
    bottom: 20,
  );

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    bottom: 30,
    top: 5,
  );
}
