import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/network_common.dart';

// Include generated file
part 'safety_equipment.g.dart';
// This is the class used by rest of your codebase
class SafetyEquipment = _SafetyEquipment with _$SafetyEquipment;


abstract class _SafetyEquipment with Store {

  String _url = "safety_equipment/";
  @observable
  List data;

  @action
  Future<bool> getDataFromApi(int id) async =>
  await NetworkCommon()
        .dio
        .get(_url +id.toString()).then((d) async {
      var results = new NetworkCommon().decodeResp(d);
      var converDataToJson= json.decode(results);
      data = converDataToJson['SafetyEquipment'] ;
      return true;
    }).catchError((e) {
      print(e);
      return false;
    });
}
