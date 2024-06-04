import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/presentation/bloc/theme/app_theme_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

List<BlocProvider> appBlocs = [
  BlocProvider<AppThemeBloc>(create: (context) => sl()),
];
