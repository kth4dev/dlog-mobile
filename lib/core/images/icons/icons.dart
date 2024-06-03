import 'package:dlog/core/images/icons/folders/comercial.dart';
import 'package:dlog/core/images/icons/folders/documents.dart';
import 'package:dlog/core/images/icons/folders/general.dart';
import 'package:dlog/core/images/icons/folders/h_icon/hicon.dart';
import 'package:dlog/core/images/icons/folders/iconex.dart';
import 'package:dlog/core/images/icons/folders/interface_essential.dart';
import 'package:dlog/core/utils/constants.dart';

import 'folders/arrow_chevron.dart';

class DLogIcons {
  static ArrowChevron chevron = ArrowChevron();
  static Comercial comercial = Comercial();
  static Documents documents = Documents();
  static General general = General();
  static Iconex iconex = Iconex();
  static const InterfaceEssential interfaceEssential = InterfaceEssential();
  static HIcon hIcon = HIcon();


  /////////////////////////////
  // Arrow Chevron
  /////////////////////////////
  static const arrowChevronBasePath = "$iconsPath/Arrows-chevron";

  static const arrowDown = "$arrowChevronBasePath/Arrow-Down.svg";
  static const chevronLeft = "$arrowChevronBasePath/Chevron-Left.svg";
  static const chevronRight = "$arrowChevronBasePath/chevron-right.svg";
  static const chevronUp = "$arrowChevronBasePath/chevron-up.svg";

  /////////////////////////////
  // Commercial
  /////////////////////////////
  static const commercialBasePath = "$iconsPath/comercial";
  static const delivery = "$commercialBasePath/Delivery.svg";
  static const deliveryTime = "$commercialBasePath/Delivery time.svg";

  /////////////////////////////
  // Documents
  /////////////////////////////
  static const documentBasePath = '$iconsPath/documents';
  static const document = "$documentBasePath/Document.svg";
  static const document1 = "$documentBasePath/Document-1.svg";
  static const documentHistory = "$documentBasePath/Document-history.svg";
  static const teams = "$documentBasePath/teams.svg";

  /////////////////////////////
  // General
  /////////////////////////////
  static const generalBasePath = "$iconsPath/general";
  static const bell = "$generalBasePath/Bell.svg";
  static const edit1 = "$generalBasePath/Edit 1.svg";

  /////////////////////////////
  // IconEx
  /////////////////////////////
  static const iconExBasePath = "$iconsPath/iconex/Light";
  final box2 = "$iconExBasePath/Box 2.svg";
  final calendar = "$iconExBasePath/Calendar.svg";
  final lock = "$iconExBasePath/Lock.svg";
  final trashCan = "$iconExBasePath/Trash can.svg";

  /////////////////////////////
  // Interface Essential
  /////////////////////////////
  static const interfaceEssentialBasePath = '$iconsPath/interface_essential';
  static const  home = "$interfaceEssentialBasePath/Home.svg";
  static const  menu4 = "$interfaceEssentialBasePath/Menu-4.svg";


  /////////////////////////////
  // HIcon - Bold
  /////////////////////////////
  static const hIconBoldBasePath = "${HIcon.basePath}/Bold";
  static const add = "$hIconBoldBasePath/Add.svg";
  static const close = "$hIconBoldBasePath/Close.svg";
  static const filter5 = "$hIconBoldBasePath/Filter 5.svg";
  static const locationTick = "$hIconBoldBasePath/Hide.svg";
  static const show = "$hIconBoldBasePath/Location Tick.svg";
  static const tick = "$hIconBoldBasePath/Show.svg";

  /////////////////////////////
  // HIcon - Linear
  /////////////////////////////
  static const hiIconLinearBasePath = "${HIcon.basePath}/Linear";
  static const password6 = "$hiIconLinearBasePath/Password 6.svg";
  static const profileCircle = "$hiIconLinearBasePath/Profile Circle.svg";
  static const search2 = "$hiIconLinearBasePath/Search 2.svg";
  static const setting = "$hiIconLinearBasePath/Setting.svg";

  /////////////////////////////
  // HIcon - Outline
  /////////////////////////////]
  static const hIconOutLineBasePath = "${HIcon.basePath}/Outline";
  static const documentUpload2 = "$hIconOutLineBasePath/Document Upload 2.svg";
  static const logout = "$hIconOutLineBasePath/Logout.svg";




}
