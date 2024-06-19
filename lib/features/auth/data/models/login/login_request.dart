class LoginRequest {
  LoginRequest({
    required this.userName,
    required this.password,
  });

  String userName;
  String password;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['user_name'] = userName;
    map['password'] = password;
    return map;
  }
}
