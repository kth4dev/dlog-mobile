import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/create_shipping_order.dart';
import 'package:flutter/material.dart';

class CreateShippingOrderScreen extends StatefulWidget {
  const CreateShippingOrderScreen({super.key});

  @override
  State<CreateShippingOrderScreen> createState() => _CreateShippingOrderScreenState();
}

class _CreateShippingOrderScreenState extends State<CreateShippingOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  DLogAppBar(title:context.getLocale(ShippingOrderLocale.shippingOrder)),
      body: Padding(
        padding: _screenPadding,
        child: const CreateShippingOrderView(),
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


