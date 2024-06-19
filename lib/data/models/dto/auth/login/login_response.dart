import 'package:dlog/data/models/dto/auth/user/user_dto.dart';

class LoginResponse {
  LoginResponse({
    this.customer,
    this.token,
  });

  UserDTO? customer;
  String? token;

  LoginResponse.fromJson(dynamic json) {
    customer = json['customer'] != null
        ? UserDTO.fromJson(json['customer'])
        : null;
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (customer != null) {
      map['customer'] = customer?.toJson();
    }
    map['token'] = token;
    return map;
  }
}
