import 'package:dlog/core/images/icons.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';

enum ProfileMenu {
  manageProfile(
    label: ProfileLocale.manageProfile,
    icon: DLogIcons.profileCircle,
    hasRoute: true,
  ),
  settings(
    label: ProfileLocale.settings,
    icon: DLogIcons.setting,
    hasRoute: true,
  ),
  password(
    label: ProfileLocale.password,
    icon: DLogIcons.password6,
    hasRoute: true,
  ),
  logout(
    label: ProfileLocale.logout,
    icon: DLogIcons.logout,
    hasRoute: false,
  );

  final String label, icon;
  final bool hasRoute;

  const ProfileMenu({
    required this.label,
    required this.icon,
    required this.hasRoute,
  });
}

