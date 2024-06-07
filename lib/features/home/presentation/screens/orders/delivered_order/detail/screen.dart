import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class DeliveredOrderDetailScreen extends StatefulWidget {
  const DeliveredOrderDetailScreen({super.key});

  @override
  State<DeliveredOrderDetailScreen> createState() => _DeliveredOrderDetailScreenState();
}

class _DeliveredOrderDetailScreenState extends State<DeliveredOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const DLogAppBar(title: "Delivered Orders",),
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const DeliveredRouteDetailView(),
            20.spacingHeight,
            const DeliveredOrderDetailView(),
            20.spacingHeight,
            const DeliveredOrderWarehouseDetailView(),
            20.spacingHeight,
            const DeliveredOrderReceivedDateView(),
            20.spacingHeight,
            const DeliveredOrderPaymentDetailView(),
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


