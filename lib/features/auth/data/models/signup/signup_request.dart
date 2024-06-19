class SignupRequest {
  SignupRequest({
    this.fullName,
    this.userName,
    this.email,
    this.password,
    this.passwordConf,
    this.avatar,
    this.phoneNumber,
    this.wechatAcc,
    this.viberAcc,
  });

  String? fullName;
  String? userName;
  String? email;
  String? password;
  String? passwordConf;
  String? avatar;
  String? phoneNumber;
  String? wechatAcc;
  String? viberAcc;

  SignupRequest.fromJson(dynamic json) {
    fullName = json['full_name'];
    userName = json['user_name'];
    email = json['email'];
    password = json['password'];
    passwordConf = json['password_conf'];
    avatar = json['avatar'];
    phoneNumber = json['phone_number'];
    wechatAcc = json['wechat_acc'];
    viberAcc = json['viber_acc'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['full_name'] = fullName;
    map['user_name'] = userName;
    map['email'] = email;
    map['password'] = password;
    map['password_conf'] = passwordConf;
    map['avatar'] = avatar;
    map['phone_number'] = phoneNumber;
    map['wechat_acc'] = wechatAcc;
    map['viber_acc'] = viberAcc;
    return map;
  }
}
