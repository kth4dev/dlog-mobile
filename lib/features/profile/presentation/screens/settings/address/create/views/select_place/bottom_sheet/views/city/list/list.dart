import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'items/item.dart';

class CityListView extends StatelessWidget {

  const CityListView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DLogText(context.getLocale(ProfileLocale.allCity),style: context.getTextTheme.tertiaryMedium,color: context.getColorScheme.blackColor,),
          20.spacingHeight,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return const CityListItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
