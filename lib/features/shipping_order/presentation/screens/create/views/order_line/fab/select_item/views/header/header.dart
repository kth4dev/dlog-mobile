import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/core/ui/text_fields/search_text_field.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/fab/select_item/views/header/items/add_item.dart';
import 'package:flutter/material.dart';

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
          context.getLocale(ShippingOrderLocale.selectItem),
          style: context.getTextTheme.secondHeaderBold,
          color: context.getColorScheme.blackColor,
        ),
        20.spacingHeight,
        Row(
          children: [
            Expanded(
              child: DLogSearchTextField(
                controller: searchController,
                text: context.getLocale(ShippingOrderLocale.filterOrder),
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
