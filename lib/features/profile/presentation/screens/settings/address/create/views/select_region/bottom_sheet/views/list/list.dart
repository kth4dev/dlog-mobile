import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/profile/presentation/screens/settings/address/create/views/select_region/bottom_sheet/views/list/items/region_list_item.dart';
import 'package:flutter/material.dart';

class RegionListView extends StatelessWidget {

  const RegionListView({super.key,});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DLogText("All Region",style: context.getTextTheme.tertiaryMedium,color: context.getColorScheme.blackColor,),
          20.spacingHeight,
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: 20,
              itemBuilder: (context, index) {
                return const RegionListItem();
              },
            ),
          ),
        ],
      ),
    );
  }
}
