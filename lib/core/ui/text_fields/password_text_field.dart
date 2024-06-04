import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

// todo : filled color,error text style
class DLogPasswordTextField extends StatefulWidget {
  final String label;
  final String hintText;
  final TextInputType textInputType;
  final bool? isValidation;
  final TextInputAction? textInputAction;
  final bool? isEnable;
  final int? minLine;
  final int? maxLine;
  final int? maxLength;
  final double? width;
  final double? height;
  final Function(String?)? onChange;

  const DLogPasswordTextField({
    super.key,
    required this.hintText,
    required this.label,
    required this.textInputType,
    this.isValidation,
    this.textInputAction,
    this.isEnable,
    this.minLine,
    this.maxLine,
    this.maxLength,
    this.onChange,
    this.width,
    this.height,
  });

  @override
  State<DLogPasswordTextField> createState() => _DLogPasswordTextFieldState();
}

class _DLogPasswordTextFieldState extends State<DLogPasswordTextField> {
  bool _isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        DLogText(
          widget.label,
          style: context.getTextTheme.tertiaryMedium,
        ),
        6.spacingHeight,
        SizedBox(
          width: widget.width,
          height: widget.height ?? 40,
          child: TextFormField(
            textAlignVertical: TextAlignVertical.top,
            minLines: widget.minLine,
            maxLines: widget.maxLine ?? 1,
            maxLength: widget.maxLength,
            style: context.getTextTheme.tertiaryMedium,
            enabled: widget.isEnable,
            validator: (value) {
              if (widget.isValidation != null && widget.isValidation == true) {
                if (value == null || value.isEmpty) {
                  return 'This field is required';
                }
              }
              return null;
            },
            textInputAction: widget.textInputAction ?? TextInputAction.next,
            obscureText: _isObscure,
            keyboardType: widget.textInputType,
            decoration: InputDecoration(
              hintText: widget.hintText,
              hintStyle: context.getTextTheme.tertiaryMedium
                  .copyWith(color: context.getColorScheme.grey.normal),
              suffixIcon: InkWell(
                  onTap: () {
                    setState(() {
                      _isObscure = !_isObscure;
                    });
                  },
                  child: Icon(
                      _isObscure ? Icons.visibility_off : Icons.visibility)),
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
