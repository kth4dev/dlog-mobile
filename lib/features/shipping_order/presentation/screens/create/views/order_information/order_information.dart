import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'views.dart';

class OrderInformationView extends StatelessWidget {
  const OrderInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding:_screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const HeaderView(),
            20.spacingHeight,
            const OrderView(),
            20.spacingHeight,
            const LocationView(),
            20.spacingHeight,
            const SelectRouteView(),
            20.spacingHeight,
            const ReceivingAddressView(),
            20.spacingHeight,
            const PackagePicturesView(),
            20.spacingHeight,
            const PackageMetricsView(),
            20.spacingHeight,
            const SupplierCodeAndDetailFileView(),
            20.spacingHeight,
            const WayBillPicturesView(),
            20.spacingHeight,
            const DownloadAndUploadButtonView(),
          ],
        ),
      ),
    );
  }
  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    bottom: 30,
    top: 5,
  );
}
