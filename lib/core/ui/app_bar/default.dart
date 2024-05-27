import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/item/back.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DLogAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;

  const DLogAppBar({
    super.key,
    this.title = "",
    this.actions,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      centerTitle: true,
      surfaceTintColor: context.getColorScheme.yellow.normal,
      backgroundColor: context.getColorScheme.black.normal,
      actions: actions,
      leading: const DLogAppBarBackButton(),
      title: DLogText(
        title,
        style: context.getTextTheme.tertiaryHeaderBold,
        color: context.getColorScheme.yellow.normal,
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(64);
}
