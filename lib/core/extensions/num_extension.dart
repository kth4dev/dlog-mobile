import 'package:flutter/cupertino.dart';

extension SizeExtension on num {
  Widget get spacingHeight => SizedBox(
    height: toDouble(),
  );

  Widget get spacingWidth => SizedBox(
    width: toDouble(),
  );
}
