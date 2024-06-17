import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class UploadItem extends StatelessWidget {
  final VoidCallback? onTap;
  const UploadItem({super.key,this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 310,
        height: 162,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: context.getColorScheme.yellow.light,
            border: Border.all(
              color: context.getColorScheme.yellow.normal,
              width: 1,
            )
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              DLogSvgImage(path:DLogIcons.documentUpload2,width: 40,height: 40,color: context.getColorScheme.blackColor,),
              22.spacingHeight,
              DLogText("Drag and drop your file here to start uploading",style: context.getTextTheme.secondaryRegular,color: context.getColorScheme.blackColor,textAlign: TextAlign.center,)
            ],
          ),
        ),
      ),
    );
  }
}
