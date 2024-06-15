import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/package/fab/detail/dialog.dart';

import 'views/views.dart';

class PackageSelectItemScreen extends StatelessWidget {
  const PackageSelectItemScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(DraftOrderLocale.packageSelectItem),
        actions: [
          InkWell(
            onTap: (){
              showCreatePackageDialog(context: context);
            },
            child: DLogText(
              context.getLocale(
                DraftOrderLocale.addItem,
              ),
              style: context.getTextTheme.bodyMedium,
              color: context.getColorScheme.yellow.normal,
            ),
          )
        ],
      ),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          children: [
            const PackageSelectItemHeaderView(),
            20.spacingHeight,
            const PackageSelectItemListView()
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
