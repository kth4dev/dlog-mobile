import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DLogAppBarBackButton extends StatelessWidget {
  const DLogAppBarBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return context.canPop()
        ? Center(
            child: InkWell(
              onTap: () => context.pop(),
              customBorder: const CircleBorder(),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: DLogSvgImage(
                  path: DLogIcons.chevronLeft,
                  size: 24,
                  color: context.getColorScheme.yellow.normal,
                ),
              ),
            ),
          )
        : const SizedBox();
  }
}
