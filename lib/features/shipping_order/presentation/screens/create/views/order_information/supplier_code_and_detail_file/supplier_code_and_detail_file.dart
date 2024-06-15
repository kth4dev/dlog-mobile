import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'dialog/customer_supplier_code_dialog.dart';
import 'items/supplier_code_and_attach_file_container.dart';


class SupplierCodeAndDetailFileView extends StatelessWidget {
  const SupplierCodeAndDetailFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SupplierCodeAndDetailFileItem(
          icon: DLogIcons.arrowDown,
          label: context.getLocale(ShippingOrderLocale.createCustomerSupplierCode),
          hintText: "${context.getLocale(ShippingOrderLocale.createCustomerSupplierCode)}...",
          onTap: () {
            showCustomerSupplierCodeDialog(context: context);
          },
        ),
        20.spacingHeight,
        SupplierCodeAndDetailFileItem(
          icon: "assets/images/icons/hicon/Linear/Attachment.svg",
          label: "${context.getLocale(ShippingOrderLocale.shippingDetailFile)}*",
          hintText: "Shippment Details File.xml",
          onTap: () {},
        ),
      ],
    );
  }
}
