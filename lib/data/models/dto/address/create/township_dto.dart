import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/township_vo.dart';

class TownshipDTO {
  TownshipDTO({
    this.id,
    this.createdAt,
    this.updatedAt,
    this.townshipName,
    this.townshipPostalCode,
    this.regionId,
  });

  TownshipDTO.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    townshipName = json['township_name'];
    townshipPostalCode = json['township_postal_code'];
    regionId = json['region_id'];
  }
  num? id;
  String? createdAt;
  String? updatedAt;
  String? townshipName;
  String? townshipPostalCode;
  num? regionId;
  TownshipDTO copyWith({
    num? id,
    String? createdAt,
    String? updatedAt,
    String? townshipName,
    String? townshipPostalCode,
    num? regionId,
  }) =>
      TownshipDTO(
        id: id ?? this.id,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        townshipName: townshipName ?? this.townshipName,
        townshipPostalCode: townshipPostalCode ?? this.townshipPostalCode,
        regionId: regionId ?? this.regionId,
      );
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['township_name'] = townshipName;
    map['township_postal_code'] = townshipPostalCode;
    map['region_id'] = regionId;
    return map;
  }

  TownshipVo toVo() {
    return TownshipVo(
      id: id ?? -1,
      createdAt: createdAt.validString,
      updatedAt: updatedAt.validString,
      townshipName: townshipName.validString,
      townshipPostalCode: townshipPostalCode.validString,
      regionId: regionId ?? -1,
    );
  }
}
