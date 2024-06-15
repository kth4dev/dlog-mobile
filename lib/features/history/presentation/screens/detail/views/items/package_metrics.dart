import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';
import 'label_description.dart';

class PackageMetricsView extends StatelessWidget {
  const PackageMetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const LabelDescription(
          label: "Kg",
          description: "10kg",
          descriptionWidth: 80,
          descriptionAlignment: Alignment.center,
        ),
        21.spacingWidth,
        const LabelDescription(
          label: "CBM",
          description: "10CBM",
          descriptionWidth: 80,
          descriptionAlignment: Alignment.center,
        ),
        21.spacingWidth,
        const LabelDescription(
          label: "No of Carton",
          description: "10",
          descriptionWidth: 80,
          descriptionAlignment: Alignment.center,
        )
      ],
    );
  }
}
