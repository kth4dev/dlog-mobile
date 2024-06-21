import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'views/views.dart';

class SelectRegionBottomSheetView extends StatelessWidget {
  const SelectRegionBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const HeaderView(headerName: "Select Region"),
          20.spacingHeight,
          const SelectedRegion(label: "Yangon"),
          20.spacingHeight,
          const RegionListView()
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24.5,
    right: 24.5,
    top: 30,
  );
}

void selectRegionBottomSheet({required BuildContext context}) {
  showModalBottomSheet(
      isDismissible: false,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      builder: (context) {
        return const SizedBox(
            height: 544,
            child: SelectRegionBottomSheetView());
      });
}
