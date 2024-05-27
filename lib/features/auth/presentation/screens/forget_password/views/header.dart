import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/graphic/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Forget Password",
          style: context.getTextTheme.secondHeaderMedium,
          color: context.getColorScheme.black.normal,
        ),
        40.spacingHeight,
        const Align(
          alignment: Alignment.center,
          child: DLogSvgImage(
            path: DLogGraphic.fogotPassword,
            height: 182,
          ),
        ),
      ],
    );
  }
}
