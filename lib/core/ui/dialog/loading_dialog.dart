import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DlogLoadingDialog extends StatelessWidget {
  final String title, content;

  const DlogLoadingDialog({super.key, required this.title, required this.content});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: DLogText(
          title,
          style: context.getTextTheme.secondaryMedium,
        ),
        content: Row(
          children: [
            CircularProgressIndicator(
              color: context.getColorScheme.yellow.normal,
            ),
            const SizedBox(width: 20.0),
            DLogText(content, style: context.getTextTheme.secondaryRegular),
          ],
        ));
  }
}

void showLoadingDialog(
    {required BuildContext context,
    required String title,
    required String content}) {
  showDialog(
    context: context,
    barrierDismissible: false,
    builder: (context) => WillPopScope(
      child: DlogLoadingDialog(title: title, content: content),
      onWillPop: () async {
        return false;
      },
    ),
  );
}
