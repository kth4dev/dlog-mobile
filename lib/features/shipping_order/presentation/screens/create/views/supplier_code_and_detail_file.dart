import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/supplier_code_and_attach_file_container.dart';
import 'package:flutter/material.dart';

import 'customer_supplier_code_dialog.dart';

class SupplierCodeAndDetailFileView extends StatelessWidget {
  const SupplierCodeAndDetailFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SupplierCodeAndAttachFileContainer(
          icon: DLogIcons.chevron.arrowDown,
          label: "Customer’s Supplier Code",
          hintText: "Select Customer’s Supplier Code...",
          onTap: () {
            showCustomerSupplierCodeDialog(context: context);
          },
        ),
        20.spacingHeight,
        SupplierCodeAndAttachFileContainer(
          icon: "assets/images/icons/hicon/Linear/Attachment.svg",
          label: "Shipment Details File*",
          hintText: "Shippment Details File.xml",
          onTap: () {},
        ),
      ],
    );
  }
}
