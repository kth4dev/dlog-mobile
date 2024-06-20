import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet/select_region_bottom_sheet.dart';

class SelectRegionView extends StatelessWidget {
  const SelectRegionView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(ProfileLocale.selectRegion),
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        InkWell(
          onTap: () {
            selectRegionBottomSheet(context: context);
          },
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: context.getColorScheme.grey.normal),
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: DLogText(
                    context.getLocale(ProfileLocale.selectRegion),
                    style: context.getTextTheme.tertiaryRegular,
                    color: context.getColorScheme.grey.normal,
                  ),
                ),
                DLogSvgImage(
                  path: DLogIcons.chevronRight,
                  width: 24,
                  height: 24,
                  color: context.getColorScheme.black.normal,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
