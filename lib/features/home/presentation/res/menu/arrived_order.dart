import 'package:dlog/features/home/presentation/res/locale/arrived_order_locale.dart';

enum ArrivedOrderMenu {
  partialOrder(
    label: ArrivedOrderLocale.partialOrder,
  ),
  allOrder(
    label: ArrivedOrderLocale.allOrder,
  );

  final String label;
  const ArrivedOrderMenu({
    required this.label,
  });
}
