class TownshipVo {
  num? id;
  String? townshipName;
  String? townshipPostalCode;
  String? createdAt;
  String? updatedAt;

  TownshipVo(
      {required this.id,
        required this.townshipName,
        required this.townshipPostalCode,
        required this.createdAt,
        required this.updatedAt});
}
