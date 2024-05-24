import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

// todo : filled color,error text style
class DLogOutLinedTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  final TextInputType textInputType;
  final bool? isValidation;
  final TextInputAction? textInputAction;
  final bool? isEnable;
  final int? minLine;
  final int? maxLine;
  final int? maxLength;
  final double? width;
  final double? height;

  const DLogOutLinedTextField({
    super.key,
    required this.controller,
    required this.label,
    required this.textInputType,
    this.isValidation,
    this.textInputAction,
    this.isEnable,
    this.minLine,
    this.maxLine,
    this.maxLength,
    this.width,
    this.height,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          label,
          style: context.getTextTheme.tertiaryMedium,
        ),
        6.spacingHeight,
        SizedBox(
          width: width,
          height: height,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.top,
            minLines: minLine,
            maxLines: maxLine,
            maxLength: maxLength,
            style: context.getTextTheme.tertiaryMedium,
            enabled: isEnable,
            validator: (value) {
              if (isValidation != null && isValidation == true) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
              }
              return null;
            },
            textInputAction: textInputAction ?? TextInputAction.next,
            controller: controller,
            keyboardType: textInputType,
            decoration: InputDecoration(

              contentPadding: const EdgeInsets.symmetric(
                vertical: 12.0,
                horizontal: 10.0,
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.getColorScheme.yellow.normal,
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.getColorScheme.grey.normal,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: context.getColorScheme.yellow.normal,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          ),
        ),
      ],
    );
  }
}