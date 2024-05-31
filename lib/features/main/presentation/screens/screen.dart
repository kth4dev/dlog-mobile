import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/bottom_nav/bar.dart';
import 'package:dlog/core/ui/bottom_nav/data.dart';
import 'package:dlog/features/history/presentation/screens/screen.dart';
import 'package:dlog/features/home/presentation/screens/screen.dart';
import 'package:dlog/features/more/presentation/screens/screen.dart';
import 'package:dlog/features/profile/presentation/screens/profile/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/list/screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: values[_selectedIndex].screen,
      bottomNavigationBar: DLogBottomNavigationBar(
        items: values,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
