import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/network_common.dart';
import 'package:json_annotation/json_annotation.dart';

// Include generated file
part 'safety_equipment.g.dart';
// This is the class used by rest of your codebase
@JsonSerializable()
class SafetyEquipment extends _SafetyEquipment with _$SafetyEquipment{

  static SafetyEquipment fromJson(Map<String, dynamic> json) => _$SafetyEquipmentFromJson(json);
  static Map<String, dynamic> toJson(SafetyEquipment safety_equipment) => _$SafetyEquipmentToJson(safety_equipment);
}


abstract class _SafetyEquipment with Store {
  
  @observable  String createdAt;
  @observable  String updatedAt;
  @observable  int typeId;
  @observable  String typeName;
  @observable  String serialNumber;
  @observable  String warranty_expiration_date;
  @observable  String adminigDateinService;
  @observable  String expiration_date;
  @observable  bool is_expiration_warranty;
  @observable  bool is_expiration;
  @observable  String image_avatar;
  @observable  String image_avatar_path;
  @observable  int classId;
  @observable  int buildingId;
  @observable  int id;
  @observable  bool state=false;


  String url = "safety_equipment/";
@action Future<bool> getDataFromApi(String equipmentID) async => await NetworkCommon()
        .dio
        .get(url +equipmentID).then((d) async {
      var results = new NetworkCommon().decodeResp(d);
      // var converDataToJson= jsonDecode(results);
      var json = results['SafetyEquipment'];

    createdAt = json['createdAt'] ;
    updatedAt = json['updatedAt'] ;
    typeId = json['typeId'] ;
    typeName = json['safety_equipment_types']['typeName'];
    serialNumber = json['serialNumber'] ;
    warranty_expiration_date = json['warranty_expiration_date'] ;
    adminigDateinService = json['buildings_equipment']['adminigDateinService'] ;
    expiration_date = json['expiration_date'] ;
    is_expiration_warranty = json['is_expiration_warranty'];
    is_expiration = json['is_expiration'];
    image_avatar = json['safety_equipment_types']['image_avatar'] ;
    image_avatar_path = json['safety_equipment_types']['image_avatar_path'] ;
    classId = json['safety_equipment_types']['classId'];
    buildingId = json['buildings_equipment']['buildingId'];
    id = json['id'] ;
    
    state=true;
      return state;
    }).catchError((e) {
      state=false;
      return state;
    });
}

