import 'package:dlog/data/models/dto/auth/user/user_dto.dart';

abstract class AuthDSRepository {
  Future<void> saveToken(String token);

  Future<void> saveUser(UserDTO user);

  Future<void> setLoggedIn();
}
