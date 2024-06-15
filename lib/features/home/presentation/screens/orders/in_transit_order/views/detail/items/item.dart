import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:flutter/material.dart';

import 'location.dart';

class InTransitDetailItem extends StatelessWidget {
  const InTransitDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Divider(
          color: context.getColorScheme.grey.lightActive,
        ),
        const LocationItem(location: "Irrawaddy"),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.5, vertical: 5),
          child: DLogSvgImage(
            path: DLogIcons.downArrowRoute,
            width: 20,
            height: 20,
          ),
        ),
        const LocationItem(location: "Muse"),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 6.5, vertical: 5),
          child: DLogSvgImage(
            path: DLogIcons.downArrowRoute,
            width: 20,
            height: 20,
          ),
        ),
        const LocationItem(location: "Yangon"),
      ],
    );
  }
}
