import 'package:dlog/core/extensions/context_extension.dart';
import 'package:flutter/material.dart';

import 'create_package/dialog.dart';

class PackageFABView extends StatelessWidget {
  const PackageFABView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: FloatingActionButton(
        backgroundColor: context.getColorScheme.black.normal,
        onPressed: () {
          showCreatePackageDialog(context: context);
        },
        child: Icon(
          Icons.add,
          color: context.getColorScheme.yellow.normal,
          size: 24,
        ),
      ),
    );
  }
}