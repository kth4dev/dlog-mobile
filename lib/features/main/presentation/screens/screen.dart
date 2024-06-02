import 'package:dlog/core/ui/bottom_nav/bar.dart';
<<<<<<< HEAD
import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/main/presentation/blocs/main_bottom_nav.dart';
import 'package:dlog/features/main/presentation/res/menu/main_menu.dart';
=======
import 'package:dlog/core/ui/bottom_nav/data.dart';
import 'package:dlog/features/history/presentation/screens/screen.dart';
import 'package:dlog/features/home/presentation/screens/screen.dart';
import 'package:dlog/features/more/presentation/screens/screen.dart';
import 'package:dlog/features/profile/presentation/screens/profile/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/list/screen.dart';
>>>>>>> dev-ye
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
<<<<<<< HEAD
=======
  int _selectedIndex = 0;

  final values = <DLogBottomNavItemData>[
    DLogBottomNavItemData(
      icon: DLogIcons.interfaceEssential.home,
      label: "Home",
      screen: const HomeScreen(),
    ),
    DLogBottomNavItemData(
      icon: DLogIcons.documents.document,
      label: "Shippment Order",
      screen: const ShippingOrderScreen(),
    ),
    DLogBottomNavItemData(
      icon: DLogIcons.documents.documentHistory,
      label: "History",
      screen: const HistoryScreen(),
    ),
    DLogBottomNavItemData(
      icon: DLogIcons.interfaceEssential.menu4,
      label: "More",
      screen: const MoreScreen(),
    ),
    const DLogBottomNavItemData(
      icon: "assets/images/icons/hicon/Linear/Profile Circle.svg",
      label: "Profile",
      screen: ProfileScreen(),
    ),
  ];

>>>>>>> dev-ye
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<MainBottomNavCubit>(),
      child: BlocBuilder<MainBottomNavCubit, int>(
        builder: (context, currentIndex) {
          return Scaffold(
            body: MainBottomNavMenu.values[currentIndex].data.screen,
            bottomNavigationBar: DLogBottomNavigationBar(
              items: MainBottomNavMenu.toDataList(),
              currentIndex: currentIndex,
              onTap: context.read<MainBottomNavCubit>().select,
            ),
          );
        },
      ),
    );
  }
}
