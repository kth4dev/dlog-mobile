import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/click_secondary_button.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class UploadingButtons extends StatelessWidget {
  const UploadingButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 160,
          height: 40,
          child: DLogClickSecondaryButton(text: "Cancel", onPressed: (){
            context.pop();
          }),
        ),
        20.spacingWidth,
        SizedBox(
          width: 160,
          height: 40,
          child: DLogPrimaryButton(text: "Upload", onPressed: (){

          }),
        )
      ],
    );
  }
}
