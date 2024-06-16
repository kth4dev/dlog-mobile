import 'package:dlog/core/route/routes.dart';
import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/data/di/injection_container.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'views/views.dart';

//todo : prevent landscape
class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  final _stepLength = 4;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: _stepLength, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    final steps = [
      EasyTrackingView(
        onNext: _next,
        onSkip: _skip,
      ),
      CustomerSupportView(
        onNext: _next,
        onSkip: _skip,
      ),
      GetStartedView(
        onNext: _next,
      ),
      CreateAccountView(
        onLogin: () => _finish(AppRoute.login),
        onSignUp: () => _finish(AppRoute.signUp),
      ),
    ];

    return Scaffold(
      body: DefaultTabController(
        length: steps.length,
        child: Padding(
          padding: _screenPadding,
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: steps,
          ),
        ),
      ),
    );
  }

  EdgeInsets get _screenPadding => const EdgeInsets.only(
        left: 24,
        right: 24,
        top: 80,
        bottom: 60,
      );


  void _next() {
    if (_tabController.index < _tabController.length - 1) {
      _tabController.animateTo(_tabController.index + 1);
    }
  }

  void _skip() {
    _tabController.animateTo(_tabController.length - 1);
  }

  void _finish(String route) {
    sl<AppDataStore>().setFirstTime(false);
    context.go(route);
  }
}
