import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/network_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:esafety/store/branch_building/branch_building.dart';

// Include generated file
part 'establishment_branch.g.dart';

// This is the class used by rest of your codebase
@JsonSerializable()
class EstablishmentBranch extends _EstablishmentBranch
    with _$EstablishmentBranch {
  static EstablishmentBranch fromJson(Map<String, dynamic> json) =>
      _$EstablishmentBranchFromJson(json);
  static Map<String, dynamic> toJson(
          EstablishmentBranch establishment_branch) =>
      _$EstablishmentBranchToJson(establishment_branch);
}

abstract class _EstablishmentBranch with Store {
  @observable
  int id;
  @observable
  int establishment_id;
  @observable
  String name;
  @observable
  String description;
  @observable
  String image_avatar;
  @observable
  String image_avatar_path;
  @observable
  String created_at;
  @observable
  String updated_at;
  @observable
  String deleted_at;
  @observable
  int branch_building_count;
  @observable
  List<BranchBuilding> branch_building = List<BranchBuilding>();
  String url = "establishment_branch/";
  @observable
  String state = "fresh";

  @action
  Future<bool> getDataFromApi(int id) async {
    state = "busy";
    bool ret;
    await NetworkCommon()
        .dio
        .get("establishment_branch/" + id.toString())
        .then((d) {
      var results = new NetworkCommon().decodeResp(d);
      branch_building = List<BranchBuilding>();
      branch_building.clear();
      var json = results['establishment_branch']['branch_building'];
      json.forEach((s) {
        branch_building.add(BranchBuilding.fromJson(s));
      });
      state = "done";
      ret = true;
    }).catchError((e) {
      print(e);
      state = "error";
      ret = false;
    });
    return ret;
  }
}
