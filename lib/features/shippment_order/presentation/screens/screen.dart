import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ShippmentOrderScreen extends StatefulWidget {
  const ShippmentOrderScreen({super.key});

  @override
  State<ShippmentOrderScreen> createState() => _ShippmentOrderScreenState();
}

class _ShippmentOrderScreenState extends State<ShippmentOrderScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DLogAppBar(title: "Shippment Order"),
      body: Center(child: DLogText("Shippment Order")),
    );
  }
}
