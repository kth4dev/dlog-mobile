import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class ItemPhoto extends StatelessWidget {
  const ItemPhoto({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(
            ShippingOrderLocale.itemPhoto,
          ),
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        6.spacingHeight,
        const Align(
           alignment: Alignment.center,
            child:  DLogAssetImage(path: "assets/images/sample/upload box.png"))
      ],
    );
  }
}
