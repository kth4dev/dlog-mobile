import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ShippingOrderFABView extends StatelessWidget {
  const ShippingOrderFABView({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      backgroundColor: context.getColorScheme.black.normal,
      onPressed: () {
        context.push(AppRoute.createShippingOrder);
      },
      child: Icon(
        Icons.add,
        color: context.getColorScheme.yellow.normal,
        size: 24,
      ),
    );
  }
}
