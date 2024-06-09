import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/home_locale.dart';
import 'package:flutter/material.dart';

class RecentShippingOrderHeader extends StatelessWidget {
  const RecentShippingOrderHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLogText(
          context.getLocale(HomeLocale.recentShippingOrder),
          style: context.getTextTheme.tertiaryHeaderMedium,
          color: context.getColorScheme.blackColor,
        ),
        const Spacer(),
        InkWell(
          onTap: (){},
          child: DLogText(
            context.getLocale(HomeLocale.more),
            style: context.getTextTheme.tertiaryBold,
            color: context.getColorScheme.yellow.normal,
          ),
        ),
      ],
    );
  }
}
