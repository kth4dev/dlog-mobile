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
    return SingleChildScrollView(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          DialogHeader(
            header:context.getLocale(ShippingOrderLocale.selectItemOrAddNewItem),
            onTap: () {
              context.pop();
            },
          ),
          30.spacingHeight,
          const DialogButtons(),
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 29,
    right: 29,
    top: 33,
    bottom: 33,
  );
}

void showSelectItemOrAddNewItem({required BuildContext context}) {
  context.pop();
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Dialog(
          insetPadding: const EdgeInsets.symmetric(horizontal: 10,),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          child: const OrderLineInformationView(),
        );
      });
}
