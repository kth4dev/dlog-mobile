import 'package:dlog/core/route/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'DE Logistics',
      routerConfig: AppRoute.router,
    );
  }
}