import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ProductDetailView extends StatelessWidget {
  const ProductDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpansionTile(
      minTileHeight: 0,
      shape: const RoundedRectangleBorder(side: BorderSide.none),
      tilePadding: const EdgeInsets.all(0),
      trailing: DLogText(
        "",
        style: context.getTextTheme.tertiaryRegular,
        color: context.getColorScheme.blackColor,
      ),
      title: const DLogText(""),
      children: const [

      ],
    );
  }
}
