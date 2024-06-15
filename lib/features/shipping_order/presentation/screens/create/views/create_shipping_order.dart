import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'views.dart';

class CreateShippingOrderView extends StatefulWidget {
  const CreateShippingOrderView({
    super.key,
  });

  @override
  State<CreateShippingOrderView> createState() =>
      _CreateShippingOrderViewState();
}

class _CreateShippingOrderViewState extends State<CreateShippingOrderView> {
  @override
  Widget build(BuildContext context) {
    List<String>  label = [
      context.getLocale(ShippingOrderLocale.orderInfo),
      context.getLocale(
        ShippingOrderLocale.orderLine,
      ),
      context.getLocale(ShippingOrderLocale.package),
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
