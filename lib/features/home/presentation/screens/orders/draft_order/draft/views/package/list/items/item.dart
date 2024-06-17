import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class PackageItem extends StatelessWidget {
  const PackageItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      color: context.getColorScheme.grey.light,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DLogAssetImage(
              path: "assets/images/sample/Rectangle 41176.png"),
          30.spacingWidth,
          Padding(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width : 80,
                  child: DLogText(
                    "Package",
                    style: context.getTextTheme.secondaryBold,
                    color: context.getColorScheme.black.normal,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                5.spacingHeight,
                DLogText(
                  "4 Cartons",
                  style: context.getTextTheme.tertiaryRegular,
                  color: context.getColorScheme.black.normal,
                ),
                5.spacingHeight,
                DLogText(
                  "5 Items",
                  style: context.getTextTheme.tertiaryRegular,
                  color: context.getColorScheme.black.normal,
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _qtyContainer(context,
                    context.getLocale(ShippingOrderLocale.weight), "12"),
                5.5.spacingHeight,
                _qtyContainer(
                    context, context.getLocale(ShippingOrderLocale.cbm), "6"),
                5.5.spacingHeight,
                _qtyContainer(
                    context, context.getLocale(ShippingOrderLocale.cbm), "75%"),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _qtyContainer(BuildContext context, String label, String value) {
    return Container(
      width: 90,
      padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 3),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: context.getColorScheme.black.light),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          DLogText(
            "$label:",
            style: context.getTextTheme.smallBold,
            color: context.getColorScheme.blackColor,
            textAlign: TextAlign.center,
          ),
          DLogText(
            value,
            style: context.getTextTheme.smallRegular,
            color: context.getColorScheme.blackColor,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        right: 10,
        top: 10,
        bottom: 10,
      );
}
