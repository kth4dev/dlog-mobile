import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class TeamsAndConditionsView extends StatelessWidget {
  const TeamsAndConditionsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText("Terms and Conditions",style: context.getTextTheme.bodyBold,color: context.getColorScheme.blackColor,),
        15.spacingHeight,
        DLogText("Lorem ipsum dolor sit amet consectetur. Volutpat in purus eu non facilisis in adipiscing. Bibendum leo pharetra platea pellentesque congue proin eget. Faucibus justo tellus lorem ut cursus sociis lacus. Amet tincidunt quam phasellus mi lobortis tempor.",style:context.getTextTheme.secondaryRegular,color: context.getColorScheme.blackColor,),
        15.spacingHeight,
        DLogText("Title Terms and Conditions",style: context.getTextTheme.bodyBold,color: context.getColorScheme.blackColor,),
        15.spacingHeight,
        DLogText("Lorem ipsum dolor sit amet consectetur. Volutpat in purus eu non facilisis in adipiscing. Bibendum leo pharetra platea pellentesque congue proin eget. Faucibus justo tellus lorem ut cursus sociis lacus. Amet tincidunt quam phasellus mi lobortis tempor.",style:context.getTextTheme.secondaryRegular,color: context.getColorScheme.blackColor,),
        15.spacingHeight,
        DLogText("Title Terms and Conditions",style: context.getTextTheme.bodyBold,color: context.getColorScheme.blackColor,),
        15.spacingHeight,
        DLogText("Lorem ipsum dolor sit amet consectetur. Volutpat in purus eu non facilisis in adipiscing. Bibendum leo pharetra platea pellentesque congue proin eget. Faucibus justo tellus lorem ut cursus sociis lacus. Amet tincidunt quam phasellus mi lobortis tempor. Lorem ipsum dolor sit amet consectetur. Volutpat in purus eu non facilisis in adipiscing. Bibendum leo pharetra platea pellentesque congue proin eget. Faucibus justo tellus lorem ut cursus sociis lacus. Amet tincidunt quam phasellus mi lobortis tempor.Lorem ipsum dolor sit amet consectetur. Volutpat in purus eu non facilisis in adipiscing. Bibendum leo pharetra platea pellentesque congue proin eget. Faucibus justo tellus lorem ut cursus sociis lacus. Amet tincidunt quam phasellus mi lobortis tempor.",style:context.getTextTheme.secondaryRegular,color: context.getColorScheme.blackColor,)
      ],
    );
  }
}
