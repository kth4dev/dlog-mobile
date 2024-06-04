import 'package:dlog/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/app/presentation/app.dart';
import 'features/app/presentation/bloc/blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.sync((){

  });
  await initDependencies();
  runApp(
    MultiBlocProvider(
      providers: appBlocs,
      child: const DLogApp(),
    ),
  );
}
