import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:flutter/material.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         DLogOutLinedTextField(
            hintText: context.getLocale(DraftOrderLocale.enterFromLocation),
            label: "${context.getLocale(DraftOrderLocale.fromLocation)}*",
            textInputType: TextInputType.text),
        20.spacingHeight,
         DLogOutLinedTextField(
            hintText:context.getLocale(DraftOrderLocale.enterToLocation),
            label:"${context.getLocale(DraftOrderLocale.toLocation)}*",
            textInputType: TextInputType.text),
      ],
    );
  }
}
