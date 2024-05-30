import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class DetailAttachedFile extends StatefulWidget {
  const DetailAttachedFile({super.key});

  @override
  State<DetailAttachedFile> createState() => _DetailAttachedFileState();
}

class _DetailAttachedFileState extends State<DetailAttachedFile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          "Shipment Details File*",
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        10.spacingHeight,
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: 342,
          height: 40,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            border: Border.all(
              width: 1,
              color: context.getColorScheme.grey.normal,
            ),
          ),
          child: Row(
            children: [
              Expanded(child: DLogText("Shippment Details File.xml",style: context.getTextTheme.tertiaryRegular,color: context.getColorScheme.grey.normal,)),
              DLogSvgImage(path: "assets/images/icons/hicon/Linear/Attachment.svg",width: 9,height: 19,color: context.getColorScheme.blackColor,)
            ],
          ),
        ),
      ],
    );
  }
}
