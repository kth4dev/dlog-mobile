import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class PartialOrderDetailScreen extends StatefulWidget {
  const PartialOrderDetailScreen({super.key});

  @override
  State<PartialOrderDetailScreen> createState() => _PartialOrderDetailScreenState();
}

class _PartialOrderDetailScreenState extends State<PartialOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DLogAppBar(title: "Details"),
        body: SingleChildScrollView(
          padding: _screenPadding,
          child: Column(
            children: [
              const PartialOrderDetailView(),
              20.spacingHeight,
              const PartialOrderWarehouseDetailView(),
              20.spacingHeight,
              const PartialOrderReceivedDateView(),
              20.spacingHeight,
              const PartialOrderPaymentDetailView(),
            ],
          ),
        )
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}
