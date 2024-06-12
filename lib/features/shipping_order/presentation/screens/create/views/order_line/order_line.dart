import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'views.dart';

class OrderLineView extends StatelessWidget {
  const OrderLineView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const OrderLineFABView(),
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeaderView(),
              20.spacingHeight,
              const OrderLineListView()
            ],
          ),
        ),
      ),
    );
  }
  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    bottom: 30,
    top: 5,
  );
}
