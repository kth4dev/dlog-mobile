class VillageAndWardsVo {
  num id;
  String createdAt;
  String updatedAt;
  String villageAndWardName;
  String villageAndWardPostalCode;
  num cityAndVillageTractId;

  VillageAndWardsVo(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.villageAndWardName,
      required this.villageAndWardPostalCode,
      required this.cityAndVillageTractId});
}
