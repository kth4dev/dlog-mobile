import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/build_button_container.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/upload_detail_file_bottom_sheet.dart';
import 'package:flutter/material.dart';

class DownloadAndUploadButtonView extends StatelessWidget {
  const DownloadAndUploadButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        BuildButtonContainer(
          color: context.getColorScheme.blackColor,
          icon: "assets/images/icons/hicon/Outline/Document Download 2.svg",
          textColor: context.getColorScheme.yellow.normal,
          text: "Download File",
          onTap: () {},
        ),
        58.spacingWidth,
        BuildButtonContainer(
          color: context.getColorScheme.yellow.normal,
          icon: "assets/images/icons/hicon/Outline/Document Upload 2.svg",
          textColor: context.getColorScheme.blackColor,
          text: "Upload File",
          onTap: () {
            showBuildUploadDetailFile(context: context);
          },
        ),
      ],
    );
  }
}
