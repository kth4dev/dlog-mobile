import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/items/order_date.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/items/order_no.dart';
import 'package:flutter/material.dart';

class OrderView extends StatefulWidget {
  const OrderView({super.key});

  @override
  State<OrderView> createState() => _OrderViewState();
}

class _OrderViewState extends State<OrderView> {
  String orderDate = "";
  @override
  void initState() {
    orderDate = "dd/mm/yy";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const OrderNo(),
        20.spacingWidth,
        OrderDate(
            orderDate: orderDate,
            onDateSelected: (date) {
              setState(() {
                orderDate = date;
              });
            })
      ],
    );
  }
}
