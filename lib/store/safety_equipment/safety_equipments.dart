import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/network_common.dart';
import 'package:esafety/store/safety_equipment/safety_equipment.dart';
// Include generated file
part 'safety_equipments.g.dart';
// This is the class used by rest of your codebase
class SafetyEquipments = _SafetyEquipments with _$SafetyEquipments;


abstract class _SafetyEquipments with Store {
  @observable
  String url = "safety_equipment/";
  @observable
  String state = "----";

  @observable
  List data;

  @action
  Future<bool> getDataFromApi(int id) async =>
  await NetworkCommon()
        .dio
        .get(url +id.toString()).then((d) async {
      var results = new NetworkCommon().decodeResp(d);
      var converDataToJson= json.decode(d.toString());
      data = converDataToJson ;
     state="0000";
      return true;
      
    }).catchError((e) {
      print(e);
      state="rrrrr";
      return false;
    });
}
