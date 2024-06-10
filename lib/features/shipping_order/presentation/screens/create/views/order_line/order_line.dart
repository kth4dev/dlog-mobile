import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'views.dart';

class OrderLineView extends StatelessWidget {
  const OrderLineView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderView(),
          20.spacingHeight,
        ],
      ),
    );
  }
}
