import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/district_vo.dart';

class DistrictDTO {
  DistrictDTO({
    this.id,
    this.districtName,
    this.districtPostalCode,
    this.createdAt,
    this.updatedAt,
  });

  DistrictDTO.fromJson(dynamic json) {
    id = json['id'];
    districtName = json['district_name'];
    districtPostalCode = json['district_postal_code'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  String? districtName;
  String? districtPostalCode;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['district_name'] = districtName;
    map['district_postal_code'] = districtPostalCode;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

  DistrictVo toVo() {
    return DistrictVo(
      id: id ?? -1,
      districtName: districtName.validString,
      districtPostalCode: districtPostalCode.validString,
      createdAt: createdAt.validString,
      updatedAt: updatedAt.validString,
    );
  }
}
