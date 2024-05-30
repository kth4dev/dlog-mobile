import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/detail_attached_file.dart';
import 'package:flutter/material.dart';

class SupplierCodeAndDetailFileView extends StatefulWidget {
  const SupplierCodeAndDetailFileView({super.key});

  @override
  State<SupplierCodeAndDetailFileView> createState() => _SupplierCodeAndDetailFileViewState();
}

class _SupplierCodeAndDetailFileViewState extends State<SupplierCodeAndDetailFileView> {
  late TextEditingController supplierCodeController;
  @override
  void initState() {
    supplierCodeController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    supplierCodeController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DLogOutLinedTextField(hintText: "Select Customer Supplier Code", controller: supplierCodeController, label: "Customer's Supplier Code", textInputType: TextInputType.text),
        20.spacingHeight,
        const DetailAttachedFile(),
      ],
    );
  }
}
