import 'package:dlog/data/models/dto/auth/user/user_dto.dart';

class UserResponse {
  UserResponse({
    this.user,
    this.token,
  });

  UserDTO? user;
  String? token;

  UserResponse.fromJson(dynamic json) {
    user = json['customer'] != null
        ? UserDTO.fromJson(json['customer'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['customer'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }
}
