import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/extensions/num_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/ui/image/svg_image.dart';
import 'package:dlog/core/ui/text/dlog_text.dart';
import 'package:dlog/data/localization/app_locale.dart';
import 'package:dlog/features/app/bloc/app_theme_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LanguageItem extends StatelessWidget {
  final DLogLocale locale;
  final VoidCallback onPressed;

  const LanguageItem({
    super.key,
    required this.locale,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 5),
      padding: const EdgeInsets.symmetric(horizontal: 20.5, vertical: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: context.getColorScheme.yellow.light,
        border: Border.all(
          color: context.getColorScheme.yellow.normal,
        ),
      ),
      child: InkWell(
        onTap: onPressed,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            DLogSvgImage(
              path: locale.icon,
              width: 24,
              height: 24,
              color: context.getColorScheme.black.normal,
            ),
            20.spacingWidth,
            DLogText(
              locale.label,
              style: context.getTextTheme.bodyMedium,
              color: context.getColorScheme.blackColor,
            ),
            const Spacer(),
            BlocBuilder<AppThemeCubit, AppThemeState>(
              builder: (context, state) {
                return Visibility(
                  visible: state.locale == locale,
                  child: DLogSvgImage(
                    path: DLogIcons.tick,
                    width: 24,
                    height: 24,
                    color: context.getColorScheme.black.normal,
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding =>
      const EdgeInsets.only(
        left: 24,
        right: 24,
        bottom: 10,
      );
}
