import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/auth/user_vo.dart';

class UserDTO {
  UserDTO({
    this.id,
    this.customerNumber,
    this.createdAt,
    this.updatedAt,
    this.email,
    this.password,
    this.userName,
    this.fullName,
    this.avatar,
    this.phoneNumber,
    this.wechatAcc,
    this.viberAcc,
  });

  num? id;
  String? customerNumber;
  String? createdAt;
  String? updatedAt;
  String? email;
  String? password;
  String? userName;
  String? fullName;
  num? avatar;
  String? phoneNumber;
  String? wechatAcc;
  String? viberAcc;

  UserDTO.fromJson(dynamic json) {
    id = json['id'];
    customerNumber = json['customer_number'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    email = json['email'];
    password = json['password'];
    userName = json['user_name'];
    fullName = json['full_name'];
    avatar = json['avatar'];
    phoneNumber = json['phone_number'];
    wechatAcc = json['wechat_acc'];
    viberAcc = json['viber_acc'];
  }

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['customer_number'] = customerNumber;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['email'] = email;
    map['password'] = password;
    map['user_name'] = userName;
    map['full_name'] = fullName;
    map['avatar'] = avatar;
    map['phone_number'] = phoneNumber;
    map['wechat_acc'] = wechatAcc;
    map['viber_acc'] = viberAcc;
    return map;
  }

  UserVo toVO() {
    return UserVo(
        id: id ?? -1,
        customerNumber: customerNumber.validString,
        email: email.validString,
        password: password.validString,
        userName: userName.validString,
        fullName: fullName.validString,
        avatar: avatar ?? -1,
        phoneNumber: phoneNumber.validString,
        wechatAcc: wechatAcc.validString,
        viberAcc: viberAcc.validString);
  }
}
