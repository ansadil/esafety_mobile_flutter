import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/network_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:esafety/store/establishment_branch/establishment_branch.dart';

// Include generated file
part 'establishment.g.dart';
// This is the class used by rest of your codebase
@JsonSerializable()

class Establishment extends _Establishment with _$Establishment{
  static Establishment fromJson(Map<String, dynamic> json) => _$EstablishmentFromJson(json);
  static Map<String, dynamic> toJson(Establishment establishment) => _$EstablishmentToJson(establishment);
}

abstract class _Establishment with Store {
  @observable int id ;
  @observable int type_id;
  @observable String name;
  @observable String description;
  @observable String image_avatar;
  @observable String image_avatar_path;
  @observable String created_at;
  @observable String updated_at;
  @observable String deleted_at;
  @observable int establishment_branch_count;
  @observable List<EstablishmentBranch> establishment_branch;
  String url = "establishments/";
}