import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class SavePackageButton extends StatelessWidget {
  const SavePackageButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        width: 160,
        height: 40,
        child: DLogPrimaryButton(
          text: context.getLocale(ShippingOrderLocale.savePacking),
          onPressed: () {},
        ),
      ),
    );
  }
}
