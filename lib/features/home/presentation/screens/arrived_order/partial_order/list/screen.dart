import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/screens/arrived_order/partial_order/list/views/header/header.dart';
import 'package:dlog/features/home/presentation/screens/arrived_order/partial_order/list/views/list/list.dart';
import 'package:flutter/material.dart';


class PartialOrderListScreen extends StatefulWidget {
  const PartialOrderListScreen({super.key});

  @override
  State<PartialOrderListScreen> createState() => _PartialOrderListScreenState();
}

class _PartialOrderListScreenState extends State<PartialOrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DLogAppBar(title: "Partial Order"),
        body: Padding(
          padding: _screenPadding,
          child: Column(
            children: [
              const AllOrderHeaderView(),
              20.spacingHeight,
              const AllOrderListView()
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
