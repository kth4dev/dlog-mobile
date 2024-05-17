import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DE Logistics',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: SvgImage(path: DLogIcons.chevron.chevronRight),
        ),
      ),
    );
  }
}
