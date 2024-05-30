import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/auth/presentation/screens/forget_password/screen.dart';
import 'package:dlog/features/auth/presentation/screens/login/screen.dart';
import 'package:dlog/features/auth/presentation/screens/reset_password/screen.dart';
import 'package:dlog/features/auth/presentation/screens/sign_up/screen.dart';
import 'package:dlog/features/auth/presentation/screens/verify/screen.dart';
import 'package:dlog/features/main/presentation/screens/screen.dart';
import 'package:dlog/features/home/presentation/screens/screen.dart';
import 'package:dlog/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/screen.dart';
import 'package:dlog/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String initial = "/";
  static const String launch = "/launch";
  static const String login = "/login";
  static const String signUp = "/signUp";
  static const String forgetPassword = "/forgetPassword";
  static const String verify  = "/verify";
  static const String resetPassword = "/resetPassword";
  static const String home = "/home";
  static const String createShippingOrder = "/createShippingOrder";


  static GoRouter router = GoRouter(
    routes: <RouteBase>[
      GoRoute(
        path: initial,
        builder: (BuildContext context, GoRouterState state) {
          return const SplashScreen();
        },
      ),
      GoRoute(
        path: launch,
        builder: (BuildContext context, GoRouterState state) {
          AppDataStore ds = sl<AppDataStore>();
          final isFirstTime = ds.isFirstTime();
          final isLoggedIn = ds.isLoggedIn();

          if (isFirstTime) {
            return const OnboardingScreen();
          } else if (isLoggedIn) {
            return const HomeScreen();
          } else {
            return const LoginScreen();
          }
        },
      ),
      GoRoute(
        path: login,
        builder: (BuildContext context, GoRouterState state) {
          return const LoginScreen();
        },
      ),
      GoRoute(
        path: signUp,
        builder: (BuildContext context, GoRouterState state) {
          return const SignUpScreen();
        },
      ),
      GoRoute(
        path: forgetPassword,
        builder: (BuildContext context, GoRouterState state) {
          return const ForgetPasswordScreen();
        },
      ),
      GoRoute(
        path: home,
        builder: (BuildContext context, GoRouterState state) {
          return const MainScreen();
        },
      ),
      GoRoute(
        path: verify,
        builder: (BuildContext context, GoRouterState state) {
          return const VerifyScreen();
        },
      ),
      GoRoute(
        path: resetPassword,
        builder: (BuildContext context, GoRouterState state) {
          return const ResetPasswordScreen();
        },
      ),
      GoRoute(
        path: createShippingOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateShippingOrderScreen();
        },
      ),
    ],
  );
}
