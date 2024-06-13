import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

class DimensionItem extends StatelessWidget {
  const DimensionItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.length),
            label: context.getLocale(DraftOrderLocale.length),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.width),
            label: context.getLocale(DraftOrderLocale.width),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.height),
            label: context.getLocale(DraftOrderLocale.height),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.cbm),
            label: context.getLocale(DraftOrderLocale.cbm),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
          DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.weight),
            label: context.getLocale(DraftOrderLocale.weight),
            textInputType: TextInputType.number,
          ),
          10.spacingHeight,
        ],
      ),
    );
  }
  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 20,
    top: 10,
  );
}
