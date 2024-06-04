import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';

enum SettingsMenu {
  language(
    label: ProfileLocale.language,
    icon: DLogIcons.languageSquare,
  ),
  address(
    label: ProfileLocale.address,
    icon: DLogIcons.locationTick,
  );

  final String label, icon;

  const SettingsMenu({
    required this.label,
    required this.icon,
  });
}
