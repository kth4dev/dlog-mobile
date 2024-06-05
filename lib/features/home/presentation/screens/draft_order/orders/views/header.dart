import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DraftOrderHeaderView extends StatelessWidget {
  const DraftOrderHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogText(
      "Draft Orders List",
      style: context.getTextTheme.secondHeaderBold,
      color: context.getColorScheme.blackColor,
    );
  }
}
