import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/core/ui/button/secondary_button.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DialogButtons extends StatelessWidget {
  const DialogButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        DLogSecondaryButton(
          text: context.getLocale(ShippingOrderLocale.addNewItem),
          onPressed: () {
            context.pop();
            context.push(AppRoute.addNewItem);
          },
          width: 180,
          height: 50,
        ),
        10.spacingHeight,
        DLogPrimaryButton(
          text: context.getLocale(ShippingOrderLocale.selectItem),
          onPressed: () {
            context.pop();
            context.push(AppRoute.selectItem);
          },
          width: 180,
          height: 50,
        ),
      ],
    );
  }
}
