import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:esafety/data/models/user_data.dart';
import 'package:esafety/data/network_common.dart';

User auth_user;
String token = null;

checkIfAuthenticated() async {
  await getAuthToken();
  await getAuthUser();
  if (token == null) {
    return false;
  }
  return true;
}

Future<String> getAuthToken() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  token = prefs.getString("api_token");
  if (token == null) {
    return null;
  }
  return token;
}
Future<String> getAuthUser() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  String user =  prefs.getString("user");
  if (user == null) {
    return null;
  }
  final jsonResponse = json.decode(user);
  
  auth_user = new User.fromJson(jsonResponse) ;
  return user;
}
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
Future<bool> getAuthFromApi(String email, String password) async =>
    await NetworkCommon()
        .dio
        .post('login', data: {'email': email, 'password': password}).then((d) async {
      var results = new NetworkCommon().decodeResp(d);
      
       auth_user  = new User.fromJson(results['success']['user']);
      print('R>'+ json.encode(auth_user));
      await saveAuthUser(auth_user.toJson().toString());
      if(await saveAuthToken(results['success']['token'])){
        return true;
      }else{
        return false;
      }
     
    }).catchError((e) {
      print(e);
      return false;
    });

Future removeAuth() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove('api_token');
}
