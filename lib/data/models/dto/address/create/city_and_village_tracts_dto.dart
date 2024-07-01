import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/city_and_village_tracts_vo.dart';

class CityAndVillageTractsDTO {
  CityAndVillageTractsDTO({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.cityAndVillageTractName,
    this.cityAndVillageTractPostalCode,
    this.townshipId,
  });

  CityAndVillageTractsDTO.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    cityAndVillageTractName = json['city_and_village_tract_name'];
    cityAndVillageTractPostalCode = json['city_and_village_tract_postal_code'];
    townshipId = json['township_id'];
  }
  num? id;
  String? createdAt;
  String? updatedAt;
  String? cityAndVillageTractName;
  String? cityAndVillageTractPostalCode;
  num? townshipId;
  CityAndVillageTractsDTO copyWith({
    num? id,
    String? createdAt,
    String? updatedAt,
    String? cityAndVillageTractName,
    String? cityAndVillageTractPostalCode,
    num? townshipId,
  }) =>
      CityAndVillageTractsDTO(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        cityAndVillageTractName:
            cityAndVillageTractName ?? this.cityAndVillageTractName,
        cityAndVillageTractPostalCode:
            cityAndVillageTractPostalCode ?? this.cityAndVillageTractPostalCode,
        townshipId: townshipId ?? this.townshipId,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['city_and_village_tract_name'] = cityAndVillageTractName;
    map['city_and_village_tract_postal_code'] = cityAndVillageTractPostalCode;
    map['township_id'] = townshipId;
    return map;
  }

  CityAndVillageTractsVo toVo() {
    return CityAndVillageTractsVo(
        id: id ?? -1,
        createdAt: createdAt.validString,
        updatedAt: updatedAt.validString,
        cityAndVillageTractName: cityAndVillageTractName.validString,
        cityAndVillageTractPostalCode:
            cityAndVillageTractPostalCode.validString,
        townshipId: townshipId ?? -1);
  }
}
