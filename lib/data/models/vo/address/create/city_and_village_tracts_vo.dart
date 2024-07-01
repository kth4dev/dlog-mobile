class CityAndVillageTractsVo {
  num id;
  String createdAt;
  String updatedAt;
  String cityAndVillageTractName;
  String cityAndVillageTractPostalCode;
  num townshipId;

  CityAndVillageTractsVo(
      {required this.id,
      required this.createdAt,
      required this.updatedAt,
      required this.cityAndVillageTractName,
      required this.cityAndVillageTractPostalCode,
      required this.townshipId});
}
