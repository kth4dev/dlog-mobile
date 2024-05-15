import 'package:flutter/cupertino.dart';
import 'package:flutter_localization/flutter_localization.dart';

extension ContextExtension on BuildContext {
  ///localization
  String getLocale(String key) {
    return key.getString(this);
  }


}
