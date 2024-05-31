import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/dialog_header.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/upload_container.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/uploading_buttons.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/uploading_file.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UploadDetailFileExitsView extends StatelessWidget {
  const UploadDetailFileExitsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           DialogHeader(
            header: "Upload Detail File",
            onTap: () {
              context.pop();
              context.pop();
            },
          ),
          18.spacingHeight,
          const UploadContainer(),
          25.spacingHeight,
          const Divider(),
          18.spacingHeight,
          const UploadingFile(),
          40.spacingHeight,
          const UploadingButtons(),
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
        return const SizedBox(height: 501, child: UploadDetailFileExitsView());
      });
}
