import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: DLogAppBar(
        title: "Profile",
      ),
      body: Center(
        child: DLogText("Profile"),
      ),
    );
  }
}
