import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/confirm_order_locale.dart';
import 'package:dlog/features/home/presentation/screens/orders/confirm_order/orders/views/header.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ConfirmOrderScreen extends StatefulWidget {
  const ConfirmOrderScreen({super.key});

  @override
  State<ConfirmOrderScreen> createState() => _ConfirmOrderScreenState();
}

class _ConfirmOrderScreenState extends State<ConfirmOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  DLogAppBar(title:context.getLocale(ConfirmOrderLocale.confirmOrder)),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const ConfirmOrderHeaderView(),
            20.spacingHeight,
            const ConfirmOrderListView(),
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
