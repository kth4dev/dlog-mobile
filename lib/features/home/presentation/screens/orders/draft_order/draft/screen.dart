import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';


class DraftOrderDetailScreen extends StatefulWidget {
  const DraftOrderDetailScreen({super.key});

  @override
  State<DraftOrderDetailScreen> createState() => _DraftOrderDetailScreenState();
}

class _DraftOrderDetailScreenState extends State<DraftOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: const DLogAppBar(title: "Draft Orders",),
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DraftOrderHeaderView(),
            30.spacingHeight,
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
            const WayBillPicturesView(),
            20.spacingHeight,
            const DownloadAndUploadButtonView(),
            30.spacingHeight,
            const AddOrderLineButtonView()
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}


