import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';


class ReceivedAllOrderListScreen extends StatefulWidget {
  const ReceivedAllOrderListScreen({super.key});

  @override
  State<ReceivedAllOrderListScreen> createState() => _ReceivedAllOrderListScreenState();
}

class _ReceivedAllOrderListScreenState extends State<ReceivedAllOrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  DLogAppBar(title:  context.getLocale(ReceivedOrderLocale.allOrder)),
        body: Padding(
          padding: _screenPadding,
          child: Column(
            children: [
              const AllOrderHeaderView(),
              20.spacingHeight,
              const AllOrderListView(),
            ],
          )
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
