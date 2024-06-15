import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class OrderLineDetailScreen extends StatefulWidget {
  const OrderLineDetailScreen({super.key});

  @override
  State<OrderLineDetailScreen> createState() => _OrderLineDetailScreenState();
}

class _OrderLineDetailScreenState extends State<OrderLineDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:const DLogAppBar(title: "Bottle"),
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child: Column(
            children: [
              const TotalView(),
              20.spacingHeight,
              const ItemView(),
            ],
          ),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}
