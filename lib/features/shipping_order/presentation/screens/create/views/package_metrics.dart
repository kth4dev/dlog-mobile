import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'items/metric_container.dart';

class PackageMetricsView extends StatelessWidget {
  const PackageMetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const MetricContainer(label: "Kg", value: "10kg"),
        21.spacingWidth,
        const MetricContainer(label: "CBM", value: "10CBM"),
        21.spacingWidth,
        const MetricContainer(label: "No of Carton", value: "10")
      ],
    );
  }
}
