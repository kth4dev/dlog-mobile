import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'items.dart';

class ProductDetailItem extends StatelessWidget {
  const ProductDetailItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _screenPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductNameTextField(),
          10.spacingHeight,
          const ItemPhoto(),
          10.spacingHeight,
          const Cargo(),
          10.spacingHeight,
          const ProductDescription(),
          10.spacingHeight,
          const ItemsCategories(),
        ],
      ),
    );
  }
  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 16,
    right: 16,
    bottom: 20,
    top: 10,
  );
}
