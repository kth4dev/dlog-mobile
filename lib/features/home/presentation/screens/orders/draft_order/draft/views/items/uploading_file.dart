import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UploadingFile extends StatelessWidget {
  const UploadingFile({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText("Uploading File",style: context.getTextTheme.bodyMedium,color: context.getColorScheme.blackColor,),
        32.spacingHeight,
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  DLogText("filename.xml",style: context.getTextTheme.tertiaryRegular,),
                  4.spacingHeight,
                  DLogText("92 kb * 4second left",style: context.getTextTheme.tertiaryRegular,),

                ],
              ),
              const Spacer(),
              InkWell(
                  onTap: (){
                    (context).pop();
                  },
                  child: DLogSvgImage(path: "assets/images/icons/hicon/Bold/Close.svg",width: 18,height: 18,color: context.getColorScheme.blackColor,))
            ],
          ),
        )
      ],
    );
  }
}
