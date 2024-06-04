import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/bottom_nav/data.dart';
import 'package:dlog/features/history/presentation/screens/orders/screen.dart';
import 'package:dlog/features/home/presentation/screens/menu/screen.dart';
import 'package:dlog/features/main/presentation/res/locale/locale.dart';
import 'package:dlog/features/more/presentation/screens/menu/screen.dart';
import 'package:dlog/features/profile/presentation/screens/profile/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/orders/screen.dart';

enum MainBottomNavMenu {
  home(
    data: DLogBottomNavItemData(
      icon: DLogIcons.home,
      label: MainLocale.home,
      screen: HomeScreen(),
    ),
  ),
  shipmentOrder(
    data: DLogBottomNavItemData(
      icon: DLogIcons.document,
      label: MainLocale.shippmentOrder,
      screen: ShippingOrderScreen(),
    ),
  ),
  history(
    data: DLogBottomNavItemData(
      icon: DLogIcons.documentHistory,
      label: MainLocale.history,
      screen: HistoryScreen(),
    ),
  ),
  more(
    data: DLogBottomNavItemData(
      icon: DLogIcons.menu4,
      label: MainLocale.more,
      screen: MoreScreen(),
    ),
  ),
  profile(
    data: DLogBottomNavItemData(
      icon: DLogIcons.profileCircle,
      label: MainLocale.profile,
      screen: ProfileScreen(),
    ),
  );

  const MainBottomNavMenu({required this.data});

  final DLogBottomNavItemData data;

  static List<DLogBottomNavItemData> toDataList() =>
      MainBottomNavMenu.values.map((e) => e.data).toList();
}
