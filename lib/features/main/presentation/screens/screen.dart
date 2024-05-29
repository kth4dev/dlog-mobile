import 'package:dlog/core/ui/bottom_nav/bar.dart';
import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/main/presentation/blocs/main_bottom_nav.dart';
import 'package:dlog/features/main/presentation/res/menu/main_menu.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
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
