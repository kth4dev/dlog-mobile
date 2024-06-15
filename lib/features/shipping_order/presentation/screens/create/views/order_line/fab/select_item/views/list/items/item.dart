import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class SelectItem extends StatefulWidget {
  const SelectItem({super.key});

  @override
  State<SelectItem> createState() => _PackageSelectItemState();
}

class _PackageSelectItemState extends State<SelectItem> {
  bool? _isSelect;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Radio<bool>(
            fillColor: WidgetStateProperty.resolveWith<Color>((states) {
              if (states.contains(WidgetState.selected)) {
                return context.getColorScheme.yellow.normal;
              } else {
                return context.getColorScheme.yellow.normal;
              }
            }),
            value: _isSelect ?? false,
            groupValue: _isSelect,
            onChanged: (bool? value) {
              setState(() {
                _isSelect = value ?? false;
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const DLogAssetImage(
                    path: "assets/images/sample/Rectangle 41175.jpg"),
                30.spacingWidth,
                Padding(
                  padding: _screenPadding,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width : 80,
                        child: DLogText(
                          "Bottle",
                          style: context.getTextTheme.secondaryBold,
                          color: context.getColorScheme.black.normal,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      5.spacingHeight,
                      DLogText(
                        "Item Category",
                        style: context.getTextTheme.tertiaryRegular,
                        color: context.getColorScheme.black.normal,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        right: 10,
        top: 10,
        bottom: 10,
      );
}
