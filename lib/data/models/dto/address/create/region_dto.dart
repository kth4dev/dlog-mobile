import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/region_vo.dart';

class RegionDTO {
  RegionDTO({
      this.id, 
      this.createdAt, 
      this.updatedAt, 
      this.regionName, 
      this.regionPostalCode,});

  RegionDTO.fromJson(dynamic json) {
    id = json['id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    regionName = json['region_name'];
    regionPostalCode = json['region_postal_code'];
  }
  num? id;
  String? createdAt;
  String? updatedAt;
  String? regionName;
  String? regionPostalCode;
RegionDTO copyWith({  num? id,
  String? createdAt,
  String? updatedAt,
  String? regionName,
  String? regionPostalCode,
}) => RegionDTO(  id: id ?? this.id,
  createdAt: createdAt ?? this.createdAt,
  updatedAt: updatedAt ?? this.updatedAt,
  regionName: regionName ?? this.regionName,
  regionPostalCode: regionPostalCode ?? this.regionPostalCode,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['created_at'] = createdAt;
    map['updated_at'] = updatedAt;
    map['region_name'] = regionName;
    map['region_postal_code'] = regionPostalCode;
    return map;
  }

  RegionVo toVo() {
    return RegionVo(
      id: id ?? -1,
      createdAt: createdAt.validString,
      updatedAt: updatedAt.validString,
      regionName: regionName.validString,
      regionPostalCode: regionPostalCode.validString
    );
  }
}