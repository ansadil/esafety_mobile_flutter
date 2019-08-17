import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/network_common.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:esafety/store/establishment/establishment.dart';

// Include generated file
part 'establishments.g.dart';

// This is the class used by rest of your codebase
@JsonSerializable()
class Establishments extends _Establishments with _$Establishments {
  static Establishments fromJson(Map<String, dynamic> json) =>
      _$EstablishmentsFromJson(json);
  static Map<String, dynamic> toJson(Establishments establishment) =>
      _$EstablishmentsToJson(establishment);
}

abstract class _Establishments with Store {
  String url = "establishments/";
  @observable
  List<Establishment> data = List<Establishment>();
  @observable
  String state = "fresh";

  @action
  Future<bool> getDataFromApi() async {
      state ="busy";
      bool ret;
      await NetworkCommon().dio.get(url).then((d){
        var results = new NetworkCommon().decodeResp(d);
        data = List<Establishment>();
        data.clear();
        var json = results['establishments'];
          json.forEach((s){
           data.add(Establishment.fromJson(s));
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
