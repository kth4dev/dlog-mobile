import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/bottom_nav/data.dart';
import 'package:dlog/features/history/presentation/screens/screen.dart';
import 'package:dlog/features/home/presentation/screens/screen.dart';
import 'package:dlog/features/more/presentation/screens/screen.dart';
import 'package:dlog/features/profile/presentation/screens/screen.dart';
import 'package:dlog/features/shippment_order/presentation/screens/screen.dart';

enum MainBottomNavMenu {
  home(
    data: DLogBottomNavItemData(
      icon: DLogIcons.home,
      label: "Home",
      screen: HomeScreen(),
    ),
  ),
  shipmentOrder(
    data: DLogBottomNavItemData(
      icon: DLogIcons.document,
      label: "Shippment Order",
      screen: ShippmentOrderScreen(),
    ),
  ),
  history(
    data: DLogBottomNavItemData(
      icon: DLogIcons.documentHistory,
      label: "History",
      screen: HistoryScreen(),
    ),
  ),
  more(
    data: DLogBottomNavItemData(
      icon: DLogIcons.menu4,
      label: "More",
      screen: MoreScreen(),
    ),
  ),
  profile(
    data: DLogBottomNavItemData(
      icon: DLogIcons.profileCircle,
      label: "Profile",
      screen: ProfileScreen(),
    ),
  );

  const MainBottomNavMenu({required this.data});

  final DLogBottomNavItemData data;

  static List<DLogBottomNavItemData> toDataList() =>
      MainBottomNavMenu.values.map((e) => e.data).toList();
}
