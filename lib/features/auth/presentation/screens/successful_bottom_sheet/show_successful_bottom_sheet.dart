import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/graphic.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';


class SuccessfulBottomSheet extends StatefulWidget {
  final String text;
  final String route;
  const SuccessfulBottomSheet({super.key, required this.text,required this.route});

  @override
  State<SuccessfulBottomSheet> createState() => _SuccessfulBottomSheetState();
}

class _SuccessfulBottomSheetState extends State<SuccessfulBottomSheet> {

  @override
  void initState() {
   _initRoute();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 321,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const DLogSvgImage(
            path: DLogGraphic.confirmed,
            width: 178,
            height: 210,
          ),
          22.spacingHeight,
          DLogText(widget.text, style: context.getTextTheme.tertiaryHeaderBold)
        ],
      ),
    );
  }
  _initRoute() async {
    await Future.delayed(
      const Duration(seconds: 1),
          () => context.go(widget.route),
    );
  }
}

 void showSuccessfulBottomSheet(
    {required BuildContext context, required String text,required String route}) {
  showModalBottomSheet(
      context: context,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      backgroundColor: context.getColorScheme.whiteColor,
      builder: (context) => SuccessfulBottomSheet(text: text,route: route,));
}
