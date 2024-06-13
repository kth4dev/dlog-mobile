import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'views/views.dart';

class DraftOrderAddNewItemScreen extends StatefulWidget {
  const DraftOrderAddNewItemScreen({super.key});

  @override
  State<DraftOrderAddNewItemScreen> createState() => _DraftOrderAddNewItemScreenState();
}

class _DraftOrderAddNewItemScreenState extends State<DraftOrderAddNewItemScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(DraftOrderLocale.addNewItem),
        actions: [
          InkWell(
            onTap: (){
              context.pop();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: DLogText(
                context.getLocale(DraftOrderLocale.save),
                style: context.getTextTheme.bodyMedium,
                color: context.getColorScheme.yellow.normal,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child: Column(
            children: [
              const ProductDetailView(),
              20.spacingHeight,
              const DimensionView(),
            ],
          ),
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
