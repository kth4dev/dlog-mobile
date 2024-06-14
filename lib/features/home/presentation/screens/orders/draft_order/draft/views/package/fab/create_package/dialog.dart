import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items/items.dart';

class CreatePackageView extends StatelessWidget {
  const CreatePackageView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DialogHeader(
            header:context.getLocale(DraftOrderLocale.createPackage),
            onTap: () {
              context.pop();
            },
          ),
          10.spacingHeight,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const DialogTextField(),
                  10.spacingHeight,
                  const DialogAddItem(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 16,
    right: 16,
    top: 30,
    bottom: 30,
  );
}

void showCreatePackageDialog({required BuildContext context}) {
  showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) {
        return Center(
          child: SizedBox(
            height: 571,
            child: Dialog(
              insetPadding: const EdgeInsets.symmetric(horizontal: 10),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: const CreatePackageView(),
            ),
          ),
        );
      });
}
