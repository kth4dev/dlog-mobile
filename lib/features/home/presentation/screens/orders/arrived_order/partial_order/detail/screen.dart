import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/arrived_order_locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ArrivedPartialOrderDetailScreen extends StatefulWidget {
  const ArrivedPartialOrderDetailScreen({super.key});

  @override
  State<ArrivedPartialOrderDetailScreen> createState() => _ArrivedPartialOrderDetailScreenState();
}

class _ArrivedPartialOrderDetailScreenState extends State<ArrivedPartialOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  DLogAppBar(title: context.getLocale(ArrivedOrderLocale.detail)),
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
