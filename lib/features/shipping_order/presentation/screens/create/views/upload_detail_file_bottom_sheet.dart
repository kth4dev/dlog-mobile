import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/build_upload_container.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/dialog_header.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/teams_and_condition_dialog.dart';
import 'package:flutter/material.dart';

class UploadDetailFileView extends StatelessWidget {
  const UploadDetailFileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:_screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const DialogHeader(header: "Upload Detail File",),
          20.spacingHeight,
           BuildUploadContainer(onTap: (){
            showTeamsAndConditionDialog(context: context);
          },),
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

void showBuildUploadDetailFile({required BuildContext context}){
  showModalBottomSheet(context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      builder: (context){
    return  const SizedBox(
        height: 276,
        child: UploadDetailFileView());
  });
}
