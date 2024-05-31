import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';


class CreateShippingOrderScreen extends StatefulWidget {
  const CreateShippingOrderScreen({super.key});

  @override
  State<CreateShippingOrderScreen> createState() => _CreateShippingOrderScreenState();
}

class _CreateShippingOrderScreenState extends State<CreateShippingOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: const DLogAppBar(title: "Shipping Order",),
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CreateShippingOrderHeaderView(),
            20.spacingHeight,
            const OrderView(),
            20.spacingHeight,
            const LocationView(),
            20.spacingHeight,
            const PackagePicturesView(),
            20.spacingHeight,
            const PackageMetricsView(),
            20.spacingHeight,
            const SupplierCodeAndDetailFileView(),
            20.spacingHeight,
            const DownloadAndUploadButtonView(),
            40.spacingHeight,
            const AddOrderLineButtonView()
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 20,
    bottom: 30,
  );
}


