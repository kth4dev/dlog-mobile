import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/region_vo.dart';

class RegionDTO {
  RegionDTO({
    this.id,
    this.regionName,
    this.regionPostalCode,
    this.createdAt,
    this.updatedAt,
  });

  RegionDTO.fromJson(dynamic json) {
    id = json['id'];
    regionName = json['region_name'];
    regionPostalCode = json['region_postal_code'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  String? regionName;
  String? regionPostalCode;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['region_name'] = regionName;
    map['region_postal_code'] = regionPostalCode;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

  RegionVo toVo() {
    return RegionVo(
      id: id ?? -1,
      regionName: regionName.validString,
      regionPostalCode: regionPostalCode.validString,
      createdAt: createdAt.validString,
      updatedAt: updatedAt.validString,
    );
  }
}
