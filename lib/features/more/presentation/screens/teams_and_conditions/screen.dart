import 'package:dlog/core/extensions/context_extension.dart';
import 'package:dlog/core/ui/app_bar/default.dart';
import 'package:dlog/features/more/presentation/res/locale/locale.dart';
import 'package:flutter/material.dart';

import 'views/views.dart';

class TeamsAndConditionsScreen extends StatefulWidget {
  const TeamsAndConditionsScreen({super.key});

  @override
  State<TeamsAndConditionsScreen> createState() => _TeamsAndConditionsScreenState();
}

class _TeamsAndConditionsScreenState extends State<TeamsAndConditionsScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar:  DLogAppBar(title:context.getLocale(MoreLocale.termsAndConditions)),
      body: SingleChildScrollView(
        child: Padding(
          padding: _screenPadding,
          child:  const TeamsAndConditionsView()
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
    left: 24,
    right: 24,
    top: 20,
    bottom: 20,
  );
}
