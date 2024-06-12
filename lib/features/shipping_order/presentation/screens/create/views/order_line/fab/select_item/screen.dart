import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class SelectItemScreen extends StatelessWidget {
  const SelectItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(ShippingOrderLocale.selectItem),
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
