import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/in_transit_order_locale.dart';
import 'package:flutter/material.dart';

class InTransitOrderHeaderView extends StatelessWidget {
  const InTransitOrderHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogText(
      context.getLocale(InTransitOrderLocale.inTransitList),
      style: context.getTextTheme.secondHeaderBold,
      color: context.getColorScheme.blackColor,
    );
  }
}
