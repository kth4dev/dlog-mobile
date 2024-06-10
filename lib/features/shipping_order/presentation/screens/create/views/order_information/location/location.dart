import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
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
            hintText: context.getLocale(ShippingOrderLocale.enterFromLocation),
            label: "${context.getLocale(ShippingOrderLocale.fromLocation)}*",
            textInputType: TextInputType.text),
        20.spacingHeight,
         DLogOutLinedTextField(
            hintText:context.getLocale(ShippingOrderLocale.enterToLocation),
            label:"${context.getLocale(ShippingOrderLocale.toLocation)}*",
            textInputType: TextInputType.text),
      ],
    );
  }
}
