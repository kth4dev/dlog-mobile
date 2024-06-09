import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';

enum ReceivedOrderMenu {
  partialOrder(
    label: ReceivedOrderLocale.partialOrder,
  ),
  allOrder(
    label:ReceivedOrderLocale.allOrder,
  );

  final String label;
  const ReceivedOrderMenu({
    required this.label,
  });
}
