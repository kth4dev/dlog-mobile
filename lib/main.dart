import 'package:dlog/core/bloc/observer.dart';
import 'package:dlog/data/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'features/app/presentation/app.dart';
import 'features/app/presentation/bloc/blocs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.wait([initDependencies()]);
  /** bloc observer **/
  Bloc.observer = AppBlocObserver();
  runApp(
    MultiBlocProvider(
      providers: appBlocs,
      child: const DLogApp(),
    ),
  );
}
