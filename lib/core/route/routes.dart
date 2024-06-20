import 'package:dlog/data/app-pref/app_data_store.dart';
import 'package:dlog/data/di/injection_container.dart';
import 'package:dlog/features/auth/presentation/screens/forget_password/screen.dart';
import 'package:dlog/features/auth/presentation/screens/login/screen.dart';
import 'package:dlog/features/auth/presentation/screens/reset_password/screen.dart';
import 'package:dlog/features/auth/presentation/screens/sign_up/screen.dart';
import 'package:dlog/features/auth/presentation/screens/verify/screen.dart';
import 'package:dlog/features/history/presentation/screens/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/menu/screen.dart';
import 'package:dlog/features/home/presentation/screens/notification/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/notification/notification/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/arrived_order/all_order/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/arrived_order/all_order/list/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/arrived_order/menu/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/arrived_order/partial_order/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/arrived_order/partial_order/list/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/confirm_order/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/confirm_order/orders/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/delivered_order/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/delivered_order/order/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/order_line/fab/add_new_item/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/order_line/fab/select_item/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/draft/views/package/fab/package_select_item/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/draft_order/orders/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/in_transit_order/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/received_order/all_order/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/received_order/all_order/list/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/received_order/menu/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/received_order/partial_order/detail/screen.dart';
import 'package:dlog/features/home/presentation/screens/orders/received_order/partial_order/list/screen.dart';
import 'package:dlog/features/main/presentation/screens/screen.dart';
import 'package:dlog/features/more/presentation/screens/policy/screen.dart';
import 'package:dlog/features/more/presentation/screens/teams_and_conditions/screen.dart';
import 'package:dlog/features/onboarding/presentation/screens/onboarding_screen.dart';
import 'package:dlog/features/profile/presentation/screens/manage_profile/screen.dart';
import 'package:dlog/features/profile/presentation/screens/settings/address/create/screen.dart';
import 'package:dlog/features/profile/presentation/screens/settings/address/list/screen.dart';
import 'package:dlog/features/profile/presentation/screens/settings/langauges/screen.dart';
import 'package:dlog/features/profile/presentation/screens/settings/list/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/fab/add_new_item/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/order_line/fab/select_item/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/create/views/package/fab/package_select_item/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/order_line/detail/screen.dart';
import 'package:dlog/features/shipping_order/presentation/screens/detail/views/package/detail/screen.dart';
import 'package:dlog/features/splash/presentation/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  static const String initial = "/";
  static const String launch = "/launch";
  static const String login = "/login";
  static const String signUp = "/signUp";
  static const String forgetPassword = "/forgetPassword";
  static const String verify = "/verify";
  static const String resetPassword = "/resetPassword";
  static const String home = "/home";
  static const String createShippingOrder = "/createShippingOrder";
  static const String shippingOrderDetail = "/shippingOrderDetail";
  static const String setting = "/setting";
  static const String shippingOrderHistoryDetail =
      "/shippingOrderHistoryDetail";
  static const String teamsAndConditions = "/teamsAndConditions";
  static const String policy = "/policy";
  static const String languages = "/languages";
  static const String addresses = "/addresses";
  static const String createAddress = "/createAddress";
  static const String notification = "/notification";
  static const String notificationDetail = "/notificationDetail";
  static const String confirmOrder = "/confirmOrder";
  static const String confirmOrderDetail = "/confirmOrderDetail";
  static const String draftOrder = "/draftOrder";
  static const String draftOrderDetail = "/draftOrderDetail";
  static const String arrivedOrderMenu = "/arrivedOrderMenu";
  static const String arrivedPartialOrder = "/arrivedPartialOrder";
  static const String arrivedPartialOrderDetail = "/arrivedPartialOrderDetail";
  static const String arrivedAllOrder = "/arrivedAllOrder";
  static const String arrivedAllOrderDetail = "/arrivedAllOrderDetail";
  static const String receivedOrderMenu = "/receivedOrderMenu";
  static const String receivedPartialOrder = "/receivedPartialOrder";
  static const String receivedPartialOrderDetail =
      "/receivedPartialOrderDetail";
  static const String receivedAllOrder = "/receivedAllOrder";
  static const String receivedAllOrderDetail = "/receivedAllOrderDetail";
  static const String deliveredOrder = "/deliveredOrder";
  static const String deliveredOrderDetail = "/deliveredOrderDetail";
  static const String inTransit = "/inTransit";
  static const String addNewItem = "/addNewItem";
  static const String selectItem = "/selectItem";
  static const String packageSelectItem = "/packageSelectItem";
  static const String draftOrderAddNewItem = "/draftOrderNewItem";
  static const String draftOrderSelectItem = "/draftOrderSelectItem";
  static const String draftOrderPackageSelectItem = "/draftOrderPackageSelectItem";
  static const String orderLineDetail = "/orderLineDetail";
  static const String packageDetail = "/packageDetail";
  static const String manageProfile = "/manageProfile";

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
      GoRoute(
        path: shippingOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ShippingOrderDetailsScreen();
        },
      ),
      GoRoute(
        path: setting,
        builder: (BuildContext context, GoRouterState state) {
          return const SettingScreen();
        },
      ),
      GoRoute(
        path: languages,
        builder: (BuildContext context, GoRouterState state) {
          return const LanguageScreen();
        },
      ),
      GoRoute(
        path: addresses,
        builder: (BuildContext context, GoRouterState state) {
          return const AddressScreen();
        },
      ),
      GoRoute(
        path: createAddress,
        builder: (BuildContext context, GoRouterState state) {
          return const CreateAddressScreen();
        },
      ),
      GoRoute(
        path: shippingOrderHistoryDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ShippingOrderHistoryDetailsScreen();
        },
      ),
      GoRoute(
        path: teamsAndConditions,
        builder: (BuildContext context, GoRouterState state) {
          return const TeamsAndConditionsScreen();
        },
      ),
      GoRoute(
        path: policy,
        builder: (BuildContext context, GoRouterState state) {
          return const PolicyScreen();
        },
      ),
      GoRoute(
        path: notification,
        builder: (BuildContext context, GoRouterState state) {
          return const NotificationScreen();
        },
      ),
      GoRoute(
        path: notificationDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const NotificationDetailScreen();
        },
      ),
      GoRoute(
        path: confirmOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const ConfirmOrderScreen();
        },
      ),
      GoRoute(
        path: confirmOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ConfirmOrderDetailScreen();
        },
      ),
      GoRoute(
        path: draftOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const DraftOrderScreen();
        },
      ),
      GoRoute(
        path: draftOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const DraftOrderDetailScreen();
        },
      ),

      ///arrived Order
      GoRoute(
        path: arrivedOrderMenu,
        builder: (BuildContext context, GoRouterState state) {
          return const ArrivedOrderMenuScreen();
        },
      ),
      GoRoute(
        path: arrivedPartialOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const ArrivedPartialOrderListScreen();
        },
      ),
      GoRoute(
        path: arrivedPartialOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ArrivedPartialOrderDetailScreen();
        },
      ),

      GoRoute(
        path: arrivedAllOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const ArrivedAllOrderListScreen();
        },
      ),
      GoRoute(
        path: arrivedAllOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ArrivedAllOrderDetailScreen();
        },
      ),

      ///received Order
      GoRoute(
        path: receivedOrderMenu,
        builder: (BuildContext context, GoRouterState state) {
          return const ReceivedOrderMenuScreen();
        },
      ),
      GoRoute(
        path: receivedPartialOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const ReceivedPartialOrderListScreen();
        },
      ),
      GoRoute(
        path: receivedPartialOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ReceivedPartialOrderDetailScreen();
        },
      ),

      GoRoute(
        path: receivedAllOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const ReceivedAllOrderListScreen();
        },
      ),
      GoRoute(
        path: receivedAllOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const ReceivedAllOrderDetailScreen();
        },
      ),

      GoRoute(
        path: deliveredOrder,
        builder: (BuildContext context, GoRouterState state) {
          return const DeliveredOrderListScreen();
        },
      ),
      GoRoute(
        path: deliveredOrderDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const DeliveredOrderDetailScreen();
        },
      ),
      GoRoute(
        path: inTransit,
        builder: (BuildContext context, GoRouterState state) {
          return const InTransitListScreen();
        },
      ),
      GoRoute(
        path: addNewItem,
        builder: (BuildContext context, GoRouterState state) {
          return const AddNewItemScreen();
        },
      ),
      GoRoute(
        path: selectItem,
        builder: (BuildContext context, GoRouterState state) {
          return const SelectItemScreen();
        },
      ),
      GoRoute(
        path: packageSelectItem,
        builder: (BuildContext context, GoRouterState state) {
          return const PackageSelectItemScreen();
        },
      ),
      GoRoute(
        path: draftOrderAddNewItem,
        builder: (BuildContext context, GoRouterState state) {
          return const DraftOrderAddNewItemScreen();
        },
      ),
      GoRoute(
        path: draftOrderSelectItem,
        builder: (BuildContext context, GoRouterState state) {
          return const DraftOrderSelectItemScreen();
        },
      ),
      GoRoute(
        path: draftOrderPackageSelectItem,
        builder: (BuildContext context, GoRouterState state) {
          return const DraftOrderPackageSelectItemScreen();
        },
      ),
      GoRoute(
        path: orderLineDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const OrderLineDetailScreen();
        },
      ),
      GoRoute(
        path: packageDetail,
        builder: (BuildContext context, GoRouterState state) {
          return const PackageDetailScreen();
        },
      ),
      GoRoute(
        path: manageProfile,
        builder: (BuildContext context, GoRouterState state) {
          return const ManageProfileScreen();
        },
      ),
    ],
  );
}
