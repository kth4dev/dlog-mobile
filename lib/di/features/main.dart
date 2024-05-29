
import 'package:dlog/di/injection_container.dart';
import 'package:dlog/features/main/presentation/blocs/main_bottom_nav.dart';

Future<void> provideMain() async {
  //---------------------------------------
  // repository
  //---------------------------------------

  //---------------------------------------
  // use case
  //---------------------------------------

  //---------------------------------------
  // bloc
  //---------------------------------------
  sl.registerFactory(()=> MainBottomNavCubit());

}
