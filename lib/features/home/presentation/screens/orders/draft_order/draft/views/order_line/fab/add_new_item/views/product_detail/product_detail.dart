import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

import 'items/prduct_detail_item.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: context.getColorScheme.yellow.light,
          border: Border.all(color: context.getColorScheme.yellow.normal)),
      child: ExpansionTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
          side: BorderSide.none,
        ),
        title: DLogText(context.getLocale(DraftOrderLocale.productDetails)),
        children: [
          Divider(
            color: context.getColorScheme.grey.lightActive,
          ),
          const ProductDetailItem(),
        ],
      ),
    );
  }
}
