import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/village_and_wards_vo.dart';

class VillageAndWardsDTO {
  VillageAndWardsDTO({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.villageAndWardName,
    this.villageAndWardPostalCode,
    this.cityAndVillageTractId,
  });

  VillageAndWardsDTO.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    villageAndWardName = json['village_and_ward_name'];
    villageAndWardPostalCode = json['village_and_ward_postal_code'];
    cityAndVillageTractId = json['city_and_village_tract_id'];
  }
  num? id;
  String? createdAt;
  String? updatedAt;
  String? villageAndWardName;
  String? villageAndWardPostalCode;
  num? cityAndVillageTractId;
  VillageAndWardsDTO copyWith({
    num? id,
    String? createdAt,
    String? updatedAt,
    String? villageAndWardName,
    String? villageAndWardPostalCode,
    num? cityAndVillageTractId,
  }) =>
      VillageAndWardsDTO(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        villageAndWardName: villageAndWardName ?? this.villageAndWardName,
        villageAndWardPostalCode:
            villageAndWardPostalCode ?? this.villageAndWardPostalCode,
        cityAndVillageTractId:
            cityAndVillageTractId ?? this.cityAndVillageTractId,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['village_and_ward_name'] = villageAndWardName;
    map['village_and_ward_postal_code'] = villageAndWardPostalCode;
    map['city_and_village_tract_id'] = cityAndVillageTractId;
    return map;
  }

  VillageAndWardsVo toVo() {
    return VillageAndWardsVo(
        id: id ?? -1,
        createdAt: createdAt.validString,
        updatedAt: updatedAt.validString,
        villageAndWardName: villageAndWardName.validString,
        villageAndWardPostalCode: villageAndWardPostalCode.validString,
        cityAndVillageTractId: cityAndVillageTractId ?? -1);
  }
}
