import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/teams_and_condition_dialog.dart';
import 'package:flutter/material.dart';

class AddOrderLineButtonView extends StatelessWidget {
  const AddOrderLineButtonView({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: DLogPrimaryButton(text: context.getLocale(DraftOrderLocale.addOrderLines), onPressed: (){
        showTeamsAndConditionDialog(context: context);
      }),
    );
  }
}
