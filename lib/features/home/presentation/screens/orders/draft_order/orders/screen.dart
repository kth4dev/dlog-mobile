import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class DraftOrderScreen extends StatefulWidget {
  const DraftOrderScreen({super.key});

  @override
  State<DraftOrderScreen> createState() => _DraftOrderScreenState();
}

class _DraftOrderScreenState extends State<DraftOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar:  DLogAppBar(title: context.getLocale(DraftOrderLocale.draftOrder)),
        body: Padding(
          padding: _screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const DraftOrderHeaderView(),
              30.spacingHeight,
              const DraftOrderListView(),
            ],
          ),
        )
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 30,
    bottom: 30,
  );
}
