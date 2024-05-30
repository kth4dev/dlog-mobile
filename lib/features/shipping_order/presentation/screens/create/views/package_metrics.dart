import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/items/build_metric_container.dart';
import 'package:flutter/material.dart';

class PackageMetricsView extends StatelessWidget {
  const PackageMetricsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const BuildMetricContainer(label: "Kg", value: "10kg"),
        21.spacingWidth,
        const BuildMetricContainer(label: "CBM", value: "10CBM"),
        21.spacingWidth,
        const BuildMetricContainer(label: "No of Carton", value: "10")
      ],
    );
  }
}
