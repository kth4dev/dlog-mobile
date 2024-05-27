import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DLogHomeAppBarHeader extends StatelessWidget {
  const DLogHomeAppBarHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: DLogText(
            "Dynamic",
            style: context.getTextTheme.tertiaryHeaderBold,
            color: context.getColorScheme.yellow.normal,
          ),
        ),
        Icon(
          Icons.notifications_none_outlined,
          color: context.getColorScheme.yellow.normal,
        )
      ],
    );
  }
}
