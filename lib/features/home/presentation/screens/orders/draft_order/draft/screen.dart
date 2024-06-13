import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/create_draft_order.dart';
import 'package:flutter/material.dart';

class DraftOrderDetailScreen extends StatefulWidget {
  const DraftOrderDetailScreen({super.key});

  @override
  State<DraftOrderDetailScreen> createState() => _DraftOrderDetailScreenState();
}

class _DraftOrderDetailScreenState extends State<DraftOrderDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  DLogAppBar(title:context.getLocale(DraftOrderLocale.detail)),
      body: const CreateDraftOrderView(),
    );
  }
}


