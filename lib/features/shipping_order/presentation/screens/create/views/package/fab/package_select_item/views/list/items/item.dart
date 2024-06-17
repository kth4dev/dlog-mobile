import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class PackageSelectItem extends StatefulWidget {
  const PackageSelectItem({super.key});

  @override
  State<PackageSelectItem> createState() => _PackageSelectItemState();
}

class _PackageSelectItemState extends State<PackageSelectItem> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            activeColor: context.getColorScheme.yellow.normal,
            value: isChecked,
            onChanged: (value) {
              setState(() {
                isChecked = value!;
              });
            },
          ),
        ),
        10.spacingWidth,
        Expanded(
          child: Card(
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
                          context.getLocale(ShippingOrderLocale.qty), "12"),
                      5.5.spacingHeight,
                      _qtyContainer(context,
                          context.getLocale(ShippingOrderLocale.pack), "6"),
                      5.5.spacingHeight,
                      _qtyContainer(context,
                          context.getLocale(ShippingOrderLocale.left), "6"),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
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
