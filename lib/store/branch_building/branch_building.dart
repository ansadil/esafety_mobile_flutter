import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/network_common.dart';
import 'package:json_annotation/json_annotation.dart';


// Include generated file
part 'branch_building.g.dart';
// This is the class used by rest of your codebase
@JsonSerializable()

class BranchBuilding extends _BranchBuilding with _$BranchBuilding{
  static BranchBuilding fromJson(Map<String, dynamic> json) => _$BranchBuildingFromJson(json);
  static Map<String, dynamic> toJson(BranchBuilding branch_building) => _$BranchBuildingToJson(branch_building);
}

abstract class _BranchBuilding with Store {
  @observable int id ;
  @observable int branch_id;
  @observable int buildingsType_id;
  @observable String name;
  @observable int NumberOfFloors;
  @observable String locationGPS;
  @observable String description;
  @observable String image_avatar;
  @observable String image_avatar_path;
  @observable String created_at;
  @observable String updated_at;
  @observable String deleted_at;
  @observable int buildings_equipment_count;
  @observable String state = "fresh";
  
  String url = "/";
}