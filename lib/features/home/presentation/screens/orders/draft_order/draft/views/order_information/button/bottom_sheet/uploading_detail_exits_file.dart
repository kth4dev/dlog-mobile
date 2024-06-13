import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items/items.dart';

class UploadDetailFileExitsBottomSheet extends StatelessWidget {
  const UploadDetailFileExitsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          BottomSheetHeader(
            header: "Upload Detail File",
            onTap: () {
              context.pop();
              context.pop();
            },
          ),
          18.spacingHeight,
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const UploadItem(),
                  25.spacingHeight,
                  const Divider(),
                  18.spacingHeight,
                  const UploadingFile(),
                  40.spacingHeight,
                  const UploadingButtons(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}

void showUploadDetailFileExitsBottomSheet({required BuildContext context}) {
  showModalBottomSheet(
      isDismissible: false,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      builder: (context) {
        return const SizedBox(height: 501, child: UploadDetailFileExitsBottomSheet());
      });
}
