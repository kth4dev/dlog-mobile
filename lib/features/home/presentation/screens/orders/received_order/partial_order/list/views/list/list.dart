import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

import 'items/item.dart';

class PartialOrderListview extends StatelessWidget {
  const PartialOrderListview({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DLogText("Today",style: context.getTextTheme.bodyRegular,color: context.getColorScheme.blackColor,),
            10.spacingHeight,
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3,
              itemBuilder: (context, index) {
                return const PartialOrderItem();
              },
            ),
          ],
        ),
      ),
    );
  }
}
