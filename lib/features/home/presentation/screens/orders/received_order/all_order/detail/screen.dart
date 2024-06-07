import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ReceivedAllOrderDetailScreen extends StatefulWidget {
  const ReceivedAllOrderDetailScreen({super.key});

  @override
  State<ReceivedAllOrderDetailScreen> createState() => _ReceivedAllOrderDetailScreenState();
}

class _ReceivedAllOrderDetailScreenState extends State<ReceivedAllOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  DLogAppBar(title: context.getLocale(ReceivedOrderLocale.detail)),
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
