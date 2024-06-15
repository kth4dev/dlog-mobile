import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

class SpecialCareCargo extends StatefulWidget {
  const SpecialCareCargo({super.key});

  @override
  State<SpecialCareCargo> createState() => _SpecialCareCargoState();
}

class _SpecialCareCargoState extends State<SpecialCareCargo> {
  bool? _isBrandedCargo;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        DLogText(
          context.getLocale(ShippingOrderLocale.specialCareCargo),
          style: context.getTextTheme.tertiaryMedium,
          color: context.getColorScheme.blackColor,
        ),
        const Spacer(),
        Row(
          children: [
            _buildRadioItem(value: true, label: context.getLocale(ShippingOrderLocale.yes)),
            30.spacingWidth,
            _buildRadioItem(value: false, label: context.getLocale(ShippingOrderLocale.no)),
          ],
        ),
      ],
    );
  }



  Widget  _buildRadioItem({required bool value,required String label}){
    return   Row(
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
