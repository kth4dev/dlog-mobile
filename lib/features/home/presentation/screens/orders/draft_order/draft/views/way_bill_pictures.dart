import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/history/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class WayBillPicturesView extends StatelessWidget {
  const WayBillPicturesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          context.getLocale(HistoryLocale.wayBill),
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        Row(
          children: [
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:  context.getColorScheme.grey.lightHover,
              ),
              child: const DLogSvgImage(path: DLogGraphic.shipping,),
            ),
            10.spacingWidth,
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color:  context.getColorScheme.grey.lightHover,
              ),
              child: const DLogSvgImage(path: DLogGraphic.shipping,),
            ),
            10.spacingWidth,
            Container(
              width: 60,
              height: 60,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: context.getColorScheme.grey.lightHover
              ),
              child: Icon(Icons.add,size: 17,color: context.getColorScheme.grey.normalHover,),
            )
          ],
        )
      ],
    );
  }
}