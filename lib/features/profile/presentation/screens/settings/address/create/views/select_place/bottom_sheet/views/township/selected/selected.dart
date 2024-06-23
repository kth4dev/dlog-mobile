import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class SelectedTownshipView extends StatelessWidget {
  const SelectedTownshipView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: _screenPadding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          color: context.getColorScheme.yellow.light,
          border: Border.all(color: context.getColorScheme.yellow.normal)),
      child: DLogText(
        "Pakokku",
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
