import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/search_text_field.dart';
import 'package:flutter/material.dart';

class ShippmentOrderHeaderView extends StatefulWidget {
  const ShippmentOrderHeaderView({super.key});

  @override
  State<ShippmentOrderHeaderView> createState() => _ShippmentOrderHeaderViewState();
}

class _ShippmentOrderHeaderViewState extends State<ShippmentOrderHeaderView> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText("Shipping Order List",style: context.getTextTheme.secondHeaderBold,color: context.getColorScheme.blackColor,),
        10.spacingHeight,
        DLogSearchTextField(controller:searchController,text: "Filter order",)
      ],
    );
  }
}
