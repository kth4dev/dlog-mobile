import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/images/logo.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/core/ui/image/asset_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    _initLaunch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.getColorScheme.yellow.normal,
      body: const Center(
        child: DLogAssetImage(
          path: DLogLogo.deDynamic,
          size: 100,
        ),
      ),
    );
  }

  _initLaunch() async {
    await Future.delayed(
      const Duration(seconds: 1),
      () => context.go(AppRoute.launch),
    );
  }
}
