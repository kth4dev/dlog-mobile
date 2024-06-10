import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/screens/add_order_line/views/header.dart';
import 'package:flutter/material.dart';

class AddOrderLineScreen extends StatefulWidget {
  const AddOrderLineScreen({super.key});

  @override
  State<AddOrderLineScreen> createState() => _AddOrderLineScreenState();
}

class _AddOrderLineScreenState extends State<AddOrderLineScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: "",
        actions: [
          TextButton(
              onPressed: () {},
              child: DLogText(
                "Upload",
                style: context.getTextTheme.bodyMedium,
                color: context.getColorScheme.yellow.normal,
              ))
        ],
      ),
      body: SingleChildScrollView(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const AddOrderLineHeaderView(),
            20.spacingHeight,

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
