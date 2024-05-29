import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/bloc/app_theme_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> appBlocs = [
  BlocProvider<AppThemeCubit>(create: (context) => sl()),
];
