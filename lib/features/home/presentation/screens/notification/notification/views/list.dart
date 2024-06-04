import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/screens/notification/notification/views/items/item.dart';
import 'package:flutter/material.dart';

class NotificationListView extends StatelessWidget {
  const NotificationListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText("Today",style: context.getTextTheme.bodyMedium,color: context.getColorScheme.blackColor,),
        20.spacingHeight,
        ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context,index){
              return const NotificationItem();
            })
      ],
    );
  }
}
