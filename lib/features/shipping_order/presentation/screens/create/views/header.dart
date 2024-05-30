import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class CreateShippingOrderHeaderView extends StatelessWidget {
  const CreateShippingOrderHeaderView({super.key});

  @override
  Widget build(BuildContext context) {
    return DLogText(
      "Create Shipping Order",
      style: context.getTextTheme.secondHeaderBold,
      color: context.getColorScheme.blackColor,
    );
  }
}
