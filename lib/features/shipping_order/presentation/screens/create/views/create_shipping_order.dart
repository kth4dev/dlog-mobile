import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_information/order_information.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/order_line.dart';
import 'package:flutter/material.dart';

class CreateShippingOrderView extends StatefulWidget {
  const CreateShippingOrderView({super.key});

  @override
  State<CreateShippingOrderView> createState() =>
      _CreateShippingOrderViewState();
}

class _CreateShippingOrderViewState extends State<CreateShippingOrderView> {
  List<String> label = ["Order Info", "Order Line", "Package"];
  @override
  Widget build(BuildContext context) {
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
          Expanded(
            child: TabBarView(
              physics: const NeverScrollableScrollPhysics(),
              children: [
                const OrderInformationView(),
                const OrderLineView(),
                Container()
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
