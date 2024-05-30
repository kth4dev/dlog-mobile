import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/dialog_description.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/dialog_header.dart';
import 'package:flutter/material.dart';

class TeamsAndConditionView extends StatelessWidget {
  const TeamsAndConditionView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const DialogHeader(header: "Teams and condition"),
          10.spacingHeight,
          const DialogDescription(),
          20.spacingHeight,
          DLogPrimaryButton(text: "Done", onPressed: (){},width: 160,height:40,)
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 20,
    right: 20,
    top: 30,
    bottom: 22,
  );
}

void showTeamsAndConditionDialog({required BuildContext context}){
  showDialog(
      barrierDismissible : false,
      context: context,
      builder: (context) {
        return  SizedBox(
          height: 670,
          child:  Dialog(
            insetPadding: const EdgeInsets.symmetric(horizontal: 0),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: const TeamsAndConditionView(),
          ),
        );
      });
}
