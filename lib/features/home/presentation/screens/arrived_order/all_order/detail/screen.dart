import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class AllOrderDetailScreen extends StatefulWidget {
  const AllOrderDetailScreen({super.key});

  @override
  State<AllOrderDetailScreen> createState() => _AllOrderDetailScreenState();
}

class _AllOrderDetailScreenState extends State<AllOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DLogAppBar(title: "Details"),
        body: SingleChildScrollView(
          padding: _screenPadding,
          child: Column(
            children: [
              const AllOrderDetailView(),
              20.spacingHeight,
              const AllOrderWarehouseDetailView(),
              20.spacingHeight,
              const AllOrderReceivedDateView(),
              20.spacingHeight,
              const AllOrderPaymentDetailView(),
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
