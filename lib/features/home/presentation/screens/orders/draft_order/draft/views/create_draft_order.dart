import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

import 'views.dart';

class CreateDraftOrderView extends StatefulWidget {
  const CreateDraftOrderView({
    super.key,
  });

  @override
  State<CreateDraftOrderView> createState() =>
      _CreateDraftOrderViewState();
}

class _CreateDraftOrderViewState extends State<CreateDraftOrderView> {
  @override
  Widget build(BuildContext context) {
    List<String>  label = [
      context.getLocale(DraftOrderLocale.orderInfo),
      context.getLocale(
        DraftOrderLocale.orderLine,
      ),
      context.getLocale(DraftOrderLocale.package),
    ];
    return DefaultTabController(
      length: label.length,
      child: Column(
        children: [
          Padding(
            padding: _screenPadding,
            child: TabBar(
                dividerColor: context.getColorScheme.grey.light,
                labelColor: context.getColorScheme.whiteColor,
                unselectedLabelColor: context.getColorScheme.yellow.normal,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorWeight: 0,
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: context.getColorScheme.blackColor),
                tabs: label
                    .map((label) => Tab(
                          child: DLogText(
                            label,
                            style: context.getTextTheme.bodyRegular,
                            textAlign: TextAlign.center,
                          ),
                        ))
                    .toList()),
          ),
          24.spacingHeight,
          const Expanded(
            child: TabBarView(
              physics: NeverScrollableScrollPhysics(),
              children: [
                OrderInformationView(),
                OrderLineView(),
                PackageView(),
              ],
            ),
          ),
        ],
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 30,
      );
}
