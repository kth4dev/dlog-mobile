import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

// todo : change suffix icon
class DLogSearchTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? isEnabled;

  const DLogSearchTextField({
    super.key,
    this.controller,
    this.isEnabled,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        enabled: isEnabled,
        maxLines: 1,
        style: context.getTextTheme.tertiaryMedium,
        controller: controller,
        decoration: InputDecoration(
          fillColor: Colors.white,
          filled: true,
          contentPadding: const EdgeInsets.symmetric(
            vertical: 12.0,
            horizontal: 20.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.getColorScheme.grey.normal,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
              color: context.getColorScheme.grey.normal,
            ),
            borderRadius: BorderRadius.circular(5),
          ),
          suffixIcon: const Icon(Icons.search),
          hintText: "Search"
        ),
      ),
    );
  }
}
