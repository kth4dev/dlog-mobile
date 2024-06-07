import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/search_text_field.dart';
import 'package:flutter/material.dart';

class DeliveredOrderHeaderView extends StatefulWidget {
  const DeliveredOrderHeaderView({super.key});

  @override
  State<DeliveredOrderHeaderView> createState() =>
      _DeliveredOrderHeaderViewState();
}

class _DeliveredOrderHeaderViewState extends State<DeliveredOrderHeaderView> {
  late TextEditingController searchController;

  @override
  void initState() {
    searchController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Delivered Order Lists",
          style: context.getTextTheme.secondHeaderBold,
          color: context.getColorScheme.blackColor,
        ),
        20.spacingHeight,
        DLogSearchTextField(
          controller: searchController,
          text: "Search",
        ),
      ],
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
