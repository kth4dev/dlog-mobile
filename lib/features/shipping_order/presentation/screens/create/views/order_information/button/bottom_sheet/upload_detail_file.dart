import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_information/button/bottom_sheet/uploading_detail_exits_file.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'items/header.dart';
import 'items/upload_item.dart';


class UploadDetailFileView extends StatelessWidget {
  const UploadDetailFileView({super.key});

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
            },
          ),
          20.spacingHeight,
          UploadItem(
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
