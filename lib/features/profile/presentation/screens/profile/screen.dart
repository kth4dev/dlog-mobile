import 'package:dlog/core/extensions/num_extension.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
     body: Column(
       children: [
         const ProfileHeaderView(),
         30.spacingHeight,
         const ProfileMenuView()
       ],
     ));
  }
}
