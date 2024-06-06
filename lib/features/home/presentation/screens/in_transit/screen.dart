import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';


class InTransitListScreen extends StatefulWidget {
  const InTransitListScreen({super.key});

  @override
  State<InTransitListScreen> createState() => _InTransitListScreenState();
}

class _InTransitListScreenState extends State<InTransitListScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: const DLogAppBar(title: "In Transit"),
        body: SingleChildScrollView(
          padding: _screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const InTransitOrderHeaderView(),
              20.spacingHeight,
              const InTransitDetailView(),
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
