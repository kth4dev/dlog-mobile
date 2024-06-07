import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:flutter/material.dart';

class ReceivedOrderMenuHeaderView extends StatelessWidget {
  const ReceivedOrderMenuHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogText(
      context.getLocale(ReceivedOrderLocale.receivedOrder),
      style: context.getTextTheme.secondHeaderBold,
      color: context.getColorScheme.blackColor,
    );
  }
}
