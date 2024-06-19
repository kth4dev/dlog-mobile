import 'package:dlog/data/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'features/app/presentation/app.dart';
import 'features/app/presentation/bloc/blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([initDependencies(),dotenv.load()]);
  runApp(
    MultiBlocProvider(
      providers: appBlocs,
      child: const DLogApp(),
    ),
  );
}
