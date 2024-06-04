import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/features/home/presentation/screens/notification/detail/views/items/item.dart';
import 'package:flutter/material.dart';

class NotificationDetailView extends StatelessWidget {
  const NotificationDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 439,
      padding: _screenPadding,
      decoration: BoxDecoration(
          color: context.getColorScheme.yellow.light,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: context.getColorScheme.yellow.normal)),
      child: const NotificationDetailItem(),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 20,
        right: 20,
        top: 20,
        bottom: 20,
      );
}
