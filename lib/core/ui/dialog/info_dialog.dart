import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class InfoDialog extends StatelessWidget {
  final String title, content;

  const InfoDialog({Key? key, required this.title, required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: DLogText(
        title,
        style: context.getTextTheme.secondaryBold,
      ),
      content: DLogText(
        content,
        style: context.getTextTheme.secondaryMedium,
      ),
      actions: [
        TextButton(
            onPressed: () => context.pop(),
            child: DLogText(
              "OK",
              style: context.getTextTheme.secondaryMedium,
              color: context.getColorScheme.yellow.normal,
            ))
      ],
    );
  }
}

void showInfoDialog(
    {required BuildContext context,
    required String title,
    required String content}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => InfoDialog(title: title, content: content),
  );
}
