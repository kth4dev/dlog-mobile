import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/confirm_order_locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ConfirmOrderDetailScreen extends StatefulWidget {
  const ConfirmOrderDetailScreen({super.key});

  @override
  State<ConfirmOrderDetailScreen> createState() => _ConfirmOrderDetailScreenState();
}

class _ConfirmOrderDetailScreenState extends State<ConfirmOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  DLogAppBar(title: context.getLocale(ConfirmOrderLocale.detail)),
        body: SingleChildScrollView(
          padding: _screenPadding,
          child: Column(
            children: [
              const OrderDetailView(),
              20.spacingHeight,
              const WarehouseAddressView(),
              20.spacingHeight,
              const PaymentDetailView(),
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
