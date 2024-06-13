import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class DraftOrderSelectItemScreen extends StatelessWidget {
  const DraftOrderSelectItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(DraftOrderLocale.selectItem),
      ),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          children: [
           const SelectItemHeaderView(),
            20.spacingHeight,
            const SelectItemListView()
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}
