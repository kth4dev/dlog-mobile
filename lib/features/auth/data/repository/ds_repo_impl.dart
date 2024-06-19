import 'dart:convert';

import 'package:dlog/data/app-pref/app_pref.dart';
import 'package:dlog/data/models/dto/auth/user/user_dto.dart';
import 'package:dlog/features/auth/domain/repository/ds_repo.dart';

class AuthDSRepositoryImpl extends AuthDSRepository {
  final AppPref pref;

  AuthDSRepositoryImpl({required this.pref});

  @override
  Future<void> saveToken(String token) async {
    await pref.saveData(key: AppPref.keyToken, value: token);
  }

  @override
  Future<void> saveUser(UserDTO user) async {
    await pref.saveData(key: AppPref.keyUser, value: jsonEncode(user));
  }
}
