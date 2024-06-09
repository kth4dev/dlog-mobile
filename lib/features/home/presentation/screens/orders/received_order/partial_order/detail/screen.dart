import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ReceivedPartialOrderDetailScreen extends StatefulWidget {
  const ReceivedPartialOrderDetailScreen({super.key});

  @override
  State<ReceivedPartialOrderDetailScreen> createState() => _ReceivedPartialOrderDetailScreenState();
}

class _ReceivedPartialOrderDetailScreenState extends State<ReceivedPartialOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  DLogAppBar(title:context.getLocale(ReceivedOrderLocale.detail)),
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
