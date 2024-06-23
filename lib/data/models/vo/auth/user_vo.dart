class UserVo {
  final num id;
  final String customerNumber;
  final String email;
  final String password;
  final String userName;
  final String fullName;
  final num avatar;
  final String phoneNumber;
  final String wechatAcc;
  final String viberAcc;

  const UserVo({
    required this.id,
    required this.customerNumber,
    required this.email,
    required this.password,
    required this.userName,
    required this.fullName,
    required this.avatar,
    required this.phoneNumber,
    required this.wechatAcc,
    required this.viberAcc,
  });
}
