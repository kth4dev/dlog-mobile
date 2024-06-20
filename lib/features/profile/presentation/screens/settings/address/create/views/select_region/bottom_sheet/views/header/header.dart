import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HeaderView extends StatelessWidget {
  final String headerName;
  const HeaderView({super.key, required this.headerName});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLogText(
          headerName,
          style: context.getTextTheme.secondaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        const Spacer(),
        InkWell(
          onTap: () {
            context.pop();
          },
          child: DLogText(
            "Cancel",
            style: context.getTextTheme.tertiaryRegular,
            color: context.getColorScheme.blackColor,
          ),
        )
      ],
    );
  }
}
