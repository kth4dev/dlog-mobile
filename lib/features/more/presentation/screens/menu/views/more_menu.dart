import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/images/icons/icons.dart';
import 'package:dlog/core/route/routes.dart';
import 'package:dlog/features/more/presentation/res/locale/locale.dart';
import 'package:dlog/features/more/presentation/screens/menu/views/items/item.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MoreMenuView extends StatelessWidget {
  const MoreMenuView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
         MoreMenuItem(
            label:context.getLocale(MoreLocale.termsAndConditions), icon: DLogIcons.document1,onTap: (){
              context.push(AppRoute.teamsAndConditions);
        },),
        Divider(
          color: context.getColorScheme.yellow.normalActive,
        ),
        MoreMenuItem(label:context.getLocale(MoreLocale.policy), icon: DLogIcons.iconex.lock,onTap: (){
         context.push(AppRoute.policy);
        },),
        Divider(
          color: context.getColorScheme.yellow.normalActive,
        ),
      ],
    );
  }
}
