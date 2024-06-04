import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
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
        const DLogOutLinedTextField(
            hintText: "Enter Location",
            label: "From Location*",
            textInputType: TextInputType.text),
        20.spacingHeight,
        const DLogOutLinedTextField(
            hintText: "Enter Location",
            label: "To Location*",
            textInputType: TextInputType.text),
      ],
    );
  }
}
