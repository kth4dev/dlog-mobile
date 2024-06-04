import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class PolicyScreen extends StatefulWidget {
  const PolicyScreen({super.key});

  @override
  State<PolicyScreen> createState() => _PolicyScreenState();
}

class _PolicyScreenState extends State<PolicyScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: const DLogAppBar(title: "Policy"),
      body: SingleChildScrollView(
        child: Padding(
            padding: _screenPadding,
            child:  const PolicyView()
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 20,
    bottom: 20,
  );
}
