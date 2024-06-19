import 'package:dlog/features/auth/presentation/res/locale/login_locale.dart';
import 'package:dlog/features/auth/presentation/res/locale/sign_up_locale.dart';
import 'package:dlog/features/history/presentation/res/locale/locale.dart';
import 'package:dlog/features/home/presentation/res/locale/arrived_order_locale.dart';
import 'package:dlog/features/home/presentation/res/locale/confirm_order_locale.dart';
import 'package:dlog/features/home/presentation/res/locale/delivered_order_locale.dart';
import 'package:dlog/features/home/presentation/res/locale/draft_order_locale.dart';
import 'package:dlog/features/home/presentation/res/locale/home_locale.dart';
import 'package:dlog/features/home/presentation/res/locale/in_transit_order_locale.dart';
import 'package:dlog/features/home/presentation/res/locale/received_order_locale.dart';
import 'package:dlog/features/main/presentation/res/locale/locale.dart';
import 'package:dlog/features/more/presentation/res/locale/locale.dart';
import 'package:dlog/features/profile/presentation/res/locale/locale.dart';
import 'package:dlog/features/shipping_order/presentation/res/locale/locale.dart';

class AppLocalization {
  static const Map<String, dynamic> en = {
    ...MainLocale.en,
    ...ProfileLocale.en,
    ...MoreLocale.en,
    ...HistoryLocale.en,
    ...HomeLocale.en,
    ...ArrivedOrderLocale.en,
    ...ReceivedOrderLocale.en,
    ...InTransitOrderLocale.en,
    ...ConfirmOrderLocale.en,
    ...DeliveredOrderLocale.en,
    ...DraftOrderLocale.en,
    ...ShippingOrderLocale.en,
    ...LoginLocale.en,
    ...SignUpLocale.en,
  };
  static const Map<String, dynamic> zh = {
    ...MainLocale.zh,
    ...ProfileLocale.zh,
    ...MoreLocale.zh,
    ...HistoryLocale.zh,
    ...HomeLocale.zh,
    ...ArrivedOrderLocale.zh,
    ...ReceivedOrderLocale.zh,
    ...InTransitOrderLocale.zh,
    ...ConfirmOrderLocale.zh,
    ...DeliveredOrderLocale.zh,
    ...DraftOrderLocale.zh,
    ...ShippingOrderLocale.zh,
    ...LoginLocale.zh,
    ...SignUpLocale.zh
  };
  static const Map<String, dynamic> my = {
    ...MainLocale.my,
    ...ProfileLocale.my,
    ...MoreLocale.my,
    ...HistoryLocale.my,
    ...HomeLocale.my,
    ...ArrivedOrderLocale.my,
    ...ReceivedOrderLocale.my,
    ...InTransitOrderLocale.my,
    ...ConfirmOrderLocale.my,
    ...DeliveredOrderLocale.my,
    ...DraftOrderLocale.my,
    ...ShippingOrderLocale.my,
    ...LoginLocale.my,
    ...SignUpLocale.my
  };
}
