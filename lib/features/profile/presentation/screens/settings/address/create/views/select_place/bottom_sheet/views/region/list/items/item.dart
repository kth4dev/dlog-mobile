import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class RegionListItem extends StatelessWidget {
  const RegionListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:_screenPadding,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: context.getColorScheme.yellow.light,
        border: Border(
          bottom: BorderSide(
            color: context.getColorScheme.yellow.normal,
            width: 1,
          ),
        ),
      ),
      child: DLogText(
        "Yangon",
        style: context.getTextTheme.tertiaryRegular,
        color: context.getColorScheme.blackColor,
      ),
    );
  }
  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 12,
    right: 12,
    top: 12,
    bottom: 12,
  );
}
