import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/search_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/add_item.dart';

class SelectItemHeaderView extends StatefulWidget {
  const SelectItemHeaderView({super.key});

  @override
  State<SelectItemHeaderView> createState() =>
      _SelectItemHeaderViewState();
}

class _SelectItemHeaderViewState extends State<SelectItemHeaderView> {
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
          context.getLocale(DraftOrderLocale.selectItem),
          style: context.getTextTheme.secondHeaderBold,
          color: context.getColorScheme.blackColor,
        ),
        20.spacingHeight,
        Row(
          children: [
            Expanded(
              child: DLogSearchTextField(
                controller: searchController,
                text: context.getLocale(DraftOrderLocale.search),
              ),
            ),
            10.spacingWidth,
            const AddItem(),
          ],
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
