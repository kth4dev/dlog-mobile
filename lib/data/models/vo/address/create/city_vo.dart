class CityVo {
  num? id;
  String? cityName;
  String? cityPostalCode;
  String? createdAt;
  String? updatedAt;

  CityVo(
      {required this.id,
        required this.cityName,
        required this.cityPostalCode,
        required this.createdAt,
        required this.updatedAt});
}
