import 'package:dlog/core/extensions/str_extension.dart';
import 'package:dlog/data/models/vo/address/create/district_vo.dart';
import 'package:dlog/data/models/vo/address/create/township_vo.dart';

class TownshipDTO {
  TownshipDTO({
    this.id,
    this.townshipName,
    this.townshipPostalCode,
    this.createdAt,
    this.updatedAt,
  });

  TownshipDTO.fromJson(dynamic json) {
    id = json['id'];
    townshipName = json['township_name'];
    townshipPostalCode = json['township_postal_code'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }
  num? id;
  String? townshipName;
  String? townshipPostalCode;
  String? createdAt;
  String? updatedAt;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['township_name'] = townshipName;
    map['township_postal_code'] = townshipPostalCode;
    map['createdAt'] = createdAt;
    map['updatedAt'] = updatedAt;
    return map;
  }

  TownshipVo toVo() {
    return TownshipVo(
      id: id ?? -1,
      townshipName: townshipName.validString,
      townshipPostalCode: townshipPostalCode.validString,
      createdAt: createdAt.validString,
      updatedAt: updatedAt.validString,
    );
  }
}
