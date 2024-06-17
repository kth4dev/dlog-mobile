import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:flutter/material.dart';

import 'bottom_sheet/upload_detail_file.dart';
import 'items/button_item.dart';

class DownloadAndUploadButtonView extends StatelessWidget {
  const DownloadAndUploadButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ButtonItem(
          color: context.getColorScheme.blackColor,
          icon:  DLogIcons.documentDownload2,
          textColor: context.getColorScheme.yellow.normal,
          text: "Download File",
          onTap: () {},
        ),
        58.spacingWidth,
        ButtonItem(
          color: context.getColorScheme.yellow.normal,
          icon:  DLogIcons.documentUpload2,
          textColor: context.getColorScheme.blackColor,
          text: "Upload File",
          onTap: () {
            showUploadDetailFileBottomSheet(context: context);
          },
        ),
      ],
    );
  }
}
