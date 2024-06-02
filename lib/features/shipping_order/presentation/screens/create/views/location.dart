import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/text_fields/outline_text_field.dart';
import 'package:flutter/material.dart';

class LocationView extends StatefulWidget {
  const LocationView({super.key});

  @override
  State<LocationView> createState() => _LocationViewState();
}

class _LocationViewState extends State<LocationView> {
  late TextEditingController fromLocationController;
  late TextEditingController toLocationController;

  @override
  void initState() {
    fromLocationController = TextEditingController();
    toLocationController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    fromLocationController.dispose();
    toLocationController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DLogOutLinedTextField(hintText: "Enter Location", controller: fromLocationController, label: "From Location*", textInputType: TextInputType.text),
        20.spacingHeight,
        DLogOutLinedTextField(hintText: "Enter Location", controller: toLocationController, label: "To Location*", textInputType: TextInputType.text),
      ],
    );
  }
}
