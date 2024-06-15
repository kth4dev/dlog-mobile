import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items/items.dart';

class TeamsAndConditionDialog extends StatefulWidget {
  const TeamsAndConditionDialog({super.key});

  @override
  State<TeamsAndConditionDialog> createState() => _TeamsAndConditionDialogState();
}

class _TeamsAndConditionDialogState extends State<TeamsAndConditionDialog> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogHeader(
            header: "Teams and condition",
            onTap: () {
              context.pop();
            },
          ),
          10.spacingHeight,
          const DialogDescription(),
          23.spacingHeight,
          const DialogCheckBoxAndText(),
          20.spacingHeight,
          const DialogButton(),
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 20,
    right: 20,
    top: 30,
    bottom: 22,
  );
}

void showTeamsAndConditionDialog({required BuildContext context}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return SizedBox(
          height: 670,
          child: Dialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(0),
            ),
            child: const TeamsAndConditionDialog(),
          ),
        );
      });
}
