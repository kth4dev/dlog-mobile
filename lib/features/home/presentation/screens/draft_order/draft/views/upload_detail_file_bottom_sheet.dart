import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/dialog_header.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/upload_container.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/upload_detail_file_exits_bottom_sheet.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UploadDetailFileView extends StatelessWidget {
  const UploadDetailFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           DialogHeader(
            header: "Upload Detail File",
            onTap: () {
              context.pop();
            },
          ),
          20.spacingHeight,
          UploadContainer(
            onTap: () {
              showUploadDetailFileExitsBottomSheet(context: context);
            },
          ),
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24.5,
        right: 24.5,
        top: 30,
        bottom: 30,
      );
}

void showUploadDetailFileBottomSheet({required BuildContext context}) {
  showModalBottomSheet(
      isDismissible: false,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      builder: (context) {
        return const SizedBox(height: 276, child: UploadDetailFileView());
      });
}
