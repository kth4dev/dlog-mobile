import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';


class ReceivedPartialOrderListScreen extends StatefulWidget {
  const ReceivedPartialOrderListScreen({super.key});

  @override
  State<ReceivedPartialOrderListScreen> createState() => _ReceivedPartialOrderListScreenState();
}

class _ReceivedPartialOrderListScreenState extends State<ReceivedPartialOrderListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DLogAppBar(title: "Partial Order"),
        body: Padding(
          padding: _screenPadding,
          child: Column(
            children: [
              const PartialOrderHeaderView(),
              20.spacingHeight,
              const PartialOrderListview()
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
