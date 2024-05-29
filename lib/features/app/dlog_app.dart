import 'package:dlog/core/route/routes.dart';
import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/bloc/app_theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = sl<FlutterLocalization>();
    final appTheme = context.read<AppThemeCubit>();
    localization.onTranslatedLanguage = appTheme.onTranslate;

    return BlocBuilder<AppThemeCubit, AppThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'DE Logistics',
          routerConfig: AppRoute.router,
          supportedLocales: localization.supportedLocales,
          localizationsDelegates: localization.localizationsDelegates,
        );
      },
    );
  }
}
