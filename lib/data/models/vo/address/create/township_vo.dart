class TownshipVo {
  num id;
  String createdAt;
  String updatedAt;
  String townshipName;
  String townshipPostalCode;
  num regionId;

  TownshipVo({
    required this.id,
    required this.createdAt,
    required this.updatedAt,
    required this.townshipName,
    required this.townshipPostalCode,
    required this.regionId,});
}
