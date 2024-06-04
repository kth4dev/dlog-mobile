import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/home.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DLogHomeAppBar(),
        body: SingleChildScrollView(
          child: Padding(
            padding: _screenPadding,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const OrderManagementView(),
                20.spacingHeight,
                const RecentShippingOrderView(),
              ],
            ),
          ),
        )
    );
  }

  EdgeInsets get _screenPadding =>  const EdgeInsets.symmetric(
      horizontal: 24,
      vertical: 30
  );
}
