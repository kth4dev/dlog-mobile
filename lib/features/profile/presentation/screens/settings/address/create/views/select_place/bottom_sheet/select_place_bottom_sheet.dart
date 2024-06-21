import 'package:flutter/material.dart';
import 'views/views.dart';

class SelectPlaceBottomSheetView extends StatelessWidget {
  const SelectPlaceBottomSheetView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: const RegionView()
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24.5,
    right: 24.5,
    top: 30,
  );
}

void selectPlaceBottomSheet({required BuildContext context}) {
  showModalBottomSheet(
      isDismissible: false,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(0),
      ),
      builder: (context) {
        return const SizedBox(
            height: 544,
            child: SelectPlaceBottomSheetView());
      });
}
