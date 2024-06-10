import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/items/supplier_code_and_attach_file_container.dart';
import 'package:flutter/material.dart';

import 'customer_supplier_code_dialog.dart';

class SupplierCodeAndDetailFileView extends StatelessWidget {
  const SupplierCodeAndDetailFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SupplierCodeAndAttachFileContainer(
          icon: DLogIcons.arrowDown,
          label: context.getLocale(DraftOrderLocale.customerSupplierCode),
          hintText: "${context.getLocale(DraftOrderLocale.createCustomerSupplierCode)}...",
          onTap: () {
            showCustomerSupplierCodeDialog(context: context);
          },
        ),
        20.spacingHeight,
        SupplierCodeAndAttachFileContainer(
          icon: "assets/images/icons/hicon/Linear/Attachment.svg",
          label: "${context.getLocale(DraftOrderLocale.shippingDetailFile)}*",
          hintText: "Shippment Details File.xml",
          onTap: () {},
        ),
      ],
    );
  }
}
