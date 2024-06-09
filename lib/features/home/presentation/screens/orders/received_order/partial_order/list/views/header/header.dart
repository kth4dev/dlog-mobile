import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/search_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';

class PartialOrderHeaderView extends StatefulWidget {
  const PartialOrderHeaderView({super.key});

  @override
  State<PartialOrderHeaderView> createState() =>
      _PartialOrderHeaderViewState();
}

class _PartialOrderHeaderViewState extends State<PartialOrderHeaderView> {
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
          context.getLocale(ReceivedOrderLocale.partialOrderList),
          style: context.getTextTheme.secondHeaderBold,
          color: context.getColorScheme.blackColor,
        ),
        20.spacingHeight,
        DLogSearchTextField(
          controller: searchController,
          text: context.getLocale(ReceivedOrderLocale.search),
        )
      ],
    );
  }

  @override
  void dispose() {
    searchController.dispose();
    super.dispose();
  }
}
