import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/items/dialog_header.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/items/dialog_text_field.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomerSupplierCodeView extends StatelessWidget {
  const CustomerSupplierCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: _screenPadding,
      child: Column(
        children: [
          DialogHeader(
            header: context.getLocale(DraftOrderLocale.createCustomerSupplierCode),
            onTap: () {
              context.pop();
            },
          ),
          10.spacingHeight,
          const DialogTextField(),
          20.spacingHeight,
          DLogPrimaryButton(
            text: context.getLocale(DraftOrderLocale.create),
            onPressed: () {},
            width: 160,
            height: 40,
          )
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 14,
        right: 14,
        top: 30,
        bottom: 24,
      );
}

void showCustomerSupplierCodeDialog({required BuildContext context}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 498,
          child: Dialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 10),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const CustomerSupplierCodeView(),
          ),
        );
      });
}
