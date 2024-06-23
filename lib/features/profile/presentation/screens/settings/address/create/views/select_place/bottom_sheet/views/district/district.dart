import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'header/header.dart';
import 'list/list.dart';
import 'selected/selected.dart';

class DistrictView extends StatelessWidget {
  const DistrictView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const HeaderView(),
        20.spacingHeight,
        const SelectedDistrictView(),
        20.spacingHeight,
        const DistrictListView()
      ],
    );
  }
}