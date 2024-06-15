import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import 'order_line_information/dialog.dart';

class OrderLineFABView extends StatelessWidget {
  const OrderLineFABView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: FloatingActionButton(
        backgroundColor: context.getColorScheme.black.normal,
        onPressed: () {
          showOrderLineInformationDialog(context: context);
        },
        child: Icon(
          Icons.add,
          color: context.getColorScheme.yellow.normal,
          size: 24,
        ),
      ),
    );
  }
}
