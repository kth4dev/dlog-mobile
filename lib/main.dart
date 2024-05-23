import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/dlog_app.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await setUpServiceLocators();
  runApp(const MyApp());
}
