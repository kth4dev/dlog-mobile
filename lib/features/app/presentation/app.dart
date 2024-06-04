import 'package:dlog/core/route/routes.dart';
import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/app/presentation/bloc/theme/app_theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class DLogApp extends StatelessWidget {
  const DLogApp({super.key});

  @override
  Widget build(BuildContext context) {
    final localization = sl<FlutterLocalization>();
    final appTheme = context.read<AppThemeBloc>();
    localization.onTranslatedLanguage = (_) => appTheme.add(OnTranslateEvent());

    return BlocBuilder<AppThemeBloc, AppThemeState>(
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
