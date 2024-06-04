import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/features/app/bloc/app_theme_cubit.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/screens/settings/langauges/views/list/languages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localization/flutter_localization.dart';

class LanguageScreen extends StatefulWidget {
  const LanguageScreen({super.key});

  @override
  State<LanguageScreen> createState() => _LanguageScreenState();
}

class _LanguageScreenState extends State<LanguageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DLogAppBar(
        title: context.getLocale(ProfileLocale.language),
      ),
      body: Padding(
        padding: _screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DLogText(
              context.getLocale(ProfileLocale.selectLanguages),
              style: context.getTextTheme.secondaryMedium,
              color: context.getColorScheme.blackColor,
            ),
            10.spacingHeight,
            LanguagesView(
              onSelected: (locale) {
                context.read<AppThemeCubit>().saveLocale(locale);
              },
            ),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 30,
      );
}
