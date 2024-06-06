import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
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
        appBar: const DLogAppBar(title: "All Order"),
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
