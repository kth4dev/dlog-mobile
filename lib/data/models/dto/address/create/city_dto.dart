import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/city_vo.dart';

class CityDTO {
  CityDTO({
    this.id,
    this.cityName,
    this.cityPostalCode,
    this.createdAt,
    this.updatedAt,
  });

  CityDTO.fromJson(dynamic json) {
    id = json['id'];
    cityName = json['city_name'];
    cityPostalCode = json['city_postal_code'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  String? cityName;
  String? cityPostalCode;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['district_name'] = cityName;
    map['district_postal_code'] = cityPostalCode;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

  CityVo toVo() {
    return CityVo(
      id: id ?? -1,
      cityName: cityName.validString,
      cityPostalCode: cityPostalCode.validString,
      createdAt: createdAt.validString,
      updatedAt: updatedAt.validString,
    );
  }
}
