import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class EmptyView extends StatelessWidget {
  final String description;
  const EmptyView({super.key,required this.description});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DLogSvgImage(
            path: DLogGraphic.noData,
            width: 221,
            height: 216,
          ),
          40.spacingHeight,
          DLogText(
            description,
            style: context.getTextTheme.secondHeaderMedium,
            color: context.getColorScheme.blackColor,
          )
        ],
      ),
    );
  }
}
