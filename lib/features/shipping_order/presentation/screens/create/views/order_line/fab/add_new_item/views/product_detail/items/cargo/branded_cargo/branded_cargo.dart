import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class BrandedCargo extends StatefulWidget {
  const BrandedCargo({super.key});

  @override
  State<BrandedCargo> createState() => _BrandedCargoState();
}

class _BrandedCargoState extends State<BrandedCargo> {
  bool? _isBrandedCargo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: 90,
          child: DLogText(
            context.getLocale(ShippingOrderLocale.brandedCargo),
            style: context.getTextTheme.tertiaryMedium,
            color: context.getColorScheme.blackColor,
            overflow: TextOverflow.ellipsis,
          ),
        ),

        Expanded(
          child: Row(
            children: [
              _buildRadioItem(value: true, label: context.getLocale(ShippingOrderLocale.yes)),
              10.spacingWidth,
              _buildRadioItem(value: false, label: context.getLocale(ShippingOrderLocale.no)),
            ],
          ),
        ),
      ],
    );
  }



  Widget  _buildRadioItem({required bool value,required String label}){
    return  Row(
      children: [
        Radio<bool>(
          value: value,
          groupValue: _isBrandedCargo,
          onChanged: (bool? value) {
            setState(() {
              _isBrandedCargo = value;
            });
          },
        ),
        DLogText(
           label,
          style: context.getTextTheme.tertiaryRegular,
        ),
      ],
    );
  }
}
