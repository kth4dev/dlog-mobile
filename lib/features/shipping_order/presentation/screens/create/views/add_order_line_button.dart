import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/teams_and_condition_dialog.dart';
import 'package:flutter/material.dart';

class AddOrderLineButtonView extends StatelessWidget {
  const AddOrderLineButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: DLogPrimaryButton(text: "Add Order Lines", onPressed: (){
        showTeamsAndConditionDialog(context: context);
      }),
    );
  }
}
