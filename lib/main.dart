import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/bloc/blocs.dart';
import 'package:dlog/features/app/dlog_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setUpServiceLocators();
  runApp(
    MultiBlocProvider(
      providers: appBlocs,
      child: const MyApp(),
    ),
  );
}
