class RegionVo {
  num? id;
  String? regionName;
  String? regionPostalCode;
  String? createdAt;
  String? updatedAt;

  RegionVo(
      {required this.id,
      required this.regionName,
      required this.regionPostalCode,
      required this.createdAt,
      required this.updatedAt});
}
