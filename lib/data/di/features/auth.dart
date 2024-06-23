import 'dart:async';

import 'package:dlog/data/di/injection_container.dart';
import 'package:dlog/features/auth/data/remote/auth_service.dart';
import 'package:dlog/features/auth/data/repository/api_repo_impl.dart';
import 'package:dlog/features/auth/data/repository/ds_repo_impl.dart';
import 'package:dlog/features/auth/domain/repository/api_repo.dart';
import 'package:dlog/features/auth/domain/repository/ds_repo.dart';
import 'package:dlog/features/auth/domain/usecase/login.dart';
import 'package:dlog/features/auth/domain/usecase/save_user.dart';
import 'package:dlog/features/auth/domain/usecase/signup.dart';
import 'package:dlog/features/auth/presentation/bloc/login/login_bloc.dart';

Future<void> provideAuth() async {
  /// ******************************************
  ///  Title : Services
  /// ******************************************
  sl.registerSingleton<AuthService>(AuthService(sl()));

  /// ******************************************
  ///  Title : Repository
  /// ******************************************
  sl.registerSingleton<AuthDSRepository>(AuthDSRepositoryImpl(pref: sl()));
  sl.registerSingleton<AuthAPIRepository>(AuthAPIRepositoryImpl(service: sl()));

  /// ******************************************
  ///  Title : Use Case
  /// ******************************************
  sl.registerFactory(() => LoginUseCase(sl()));
  sl.registerFactory(() => SaveUserInfoUseCase(sl()));
  sl.registerFactory(() => SignupUserCase(sl()));

  /// ******************************************
  ///  Title : Bloc
  /// ******************************************
  sl.registerFactory(() => LoginBloc(sl(), sl()));
}
