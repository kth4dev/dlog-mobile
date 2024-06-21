import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderView extends StatelessWidget {
  const HeaderView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLogText(
          context.getLocale(ProfileLocale.selectTownship),
          style: context.getTextTheme.secondaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            context.pop();
          },
          child: DLogText(
            context.getLocale(ProfileLocale.cancel),
            style: context.getTextTheme.tertiaryRegular,
            color: context.getColorScheme.blackColor,
          ),
        )
      ],
    );
  }
}
