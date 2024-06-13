import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items/items.dart';

class OrderLineInformationView extends StatelessWidget {
  const OrderLineInformationView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogHeader(
            header:context.getLocale(ShippingOrderLocale.orderLineInformation),
            onTap: () {
              context.pop();
            },
          ),
          10.spacingHeight,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DialogTextField(),
                  10.spacingHeight,
                  const DialogAddItem(),
                ],
              ),
            ),
          )

        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 16,
    right: 16,
    top: 30,
    bottom: 30,
  );
}

void showOrderLineInformationDialog({required BuildContext context}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Center(
          child: SizedBox(
            height: 404,
            child: Dialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const OrderLineInformationView(),
            ),
          ),
        );
      });
}
