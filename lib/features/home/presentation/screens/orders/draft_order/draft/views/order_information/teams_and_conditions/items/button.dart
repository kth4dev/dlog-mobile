import 'package:dlog/core/ui/button/primary_button.dart';
import 'package:flutter/cupertino.dart';

class DialogButton extends StatelessWidget {
  const DialogButton({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
        alignment: Alignment.bottomCenter,
        child: DLogPrimaryButton(
          text: "Done",
          onPressed: () {},
          width: 160,
          height: 40,
        ));
  }
}
