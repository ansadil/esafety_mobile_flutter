import 'package:mobx/mobx.dart';
import 'dart:convert';
import 'package:esafety/data/models/user_data.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:esafety/data/network_common.dart';
// Include generated file
part 'auth.g.dart';

// This is the class used by rest of your codebase
class Auth = _Auth with _$Auth;

// The store-class
abstract class _Auth with Store {

  @observable
  String token = null;
  
  @observable
  User user;

 @observable
  bool isloged;

  @action
  Future<bool> getAuthFromApi(String email, String password) async =>
    await NetworkCommon()
        .dio
        .post('login', data: {'email': email, 'password': password}).then((d) async {
      var results = new NetworkCommon().decodeResp(d);
       user  = new User.fromJson(results['success']['user']);
      await saveAuthUser(user.toJson().toString());
      if(await saveAuthToken(results['success']['token'])){
        return true;
      }else{
        return false;
      }
     
    }).catchError((e) {
      print(e);
      return false;
    });

  @action
  Future<bool> saveAuthToken(String newToken) async =>
    await SharedPreferences.getInstance().then((SharedPreferences prefs) async {
      token = newToken;
      await prefs.setString("api_token", newToken).then((r){
        return true;
      }).catchError((e){
        return false;
      });
      return true;
    }).catchError((e){
       return false;
    });

  @action
  Future<String> getAuthUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
      String _user =  prefs.getString("user");
      if (_user == null) {
        return null;
      }
      final jsonResponse = json.decode(_user);
      
      user = new User.fromJson(jsonResponse) ;
      return _user;
    }

  @action
  void getTokingfromSharedPreferences(){
    
  }

  @action
  Future<bool>checkIfAuthenticated() async{
    
     await getAuthToken();
    await getAuthUser();
    
  if (token == null) {
    return false;
  }
  return true;
  }

  @action
  Future<String> getAuthToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    token = prefs.getString("api_token");
    // print(">>>>>>>>"+token);
    if (token == null) {
      return null;
    }
    return token;
  }
  @action
  Future<bool> saveAuthUser(String newUser) async =>
    await SharedPreferences.getInstance().then((SharedPreferences prefs) async {
      await prefs.setString("user", newUser).then((r){
        return true;
      }).catchError((e){
        return false;
      });
      return true;
    }).catchError((e){
       return false;
    });

  @action
  Future removeAuth() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('api_token');
  }
  
}