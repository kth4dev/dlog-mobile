import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class LocationItem extends StatelessWidget {
  final String location;
  const LocationItem({super.key,required this.location});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const DLogSvgImage(path: DLogIcons.locationTick,width: 20,height: 20,),
        5.spacingWidth,
        DLogText(
          location,
          style: context.getTextTheme.smallRegular,
          color: context.getColorScheme.blackColor,
        )
      ],
    );
  }
}
