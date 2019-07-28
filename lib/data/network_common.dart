import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:alice/alice.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:esafety/env.dart';

class NetworkCommon {
  static final NetworkCommon _singleton = new NetworkCommon._internal();
  
    // Alice alice = Alice(showNotification: true);
    ProdEnv _env = ProdEnv();
  factory NetworkCommon() {
    return _singleton;
  }

  NetworkCommon._internal();

  final JsonDecoder _decoder = new JsonDecoder();

  // decode json response to dynamic (helper function)
  dynamic decodeResp(d) {
    var response = d as Response;
    final dynamic jsonBody = response.data;
    final statusCode = response.statusCode;

    if (statusCode < 200 || statusCode >= 300 || jsonBody == null) {
      throw new Exception("statusCode: $statusCode");
    }

    if (jsonBody is String) {
      return _decoder.convert(jsonBody);
    } else {
      return jsonBody;
    }
  }

  // global configration
  Dio get dio {
    Dio dio = new Dio();
   
    // dio.interceptors.add(alice.getDioInterceptor());
    // set base url
    dio.options.baseUrl = _env.baseurl_api;
    // handle timeouts
    dio.options.connectTimeout = 20000; //5s
    dio.options.receiveTimeout = 20000;

    dio.interceptors
        .add(InterceptorsWrapper(onRequest: (RequestOptions options) async {
     
       // set the token
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String token = prefs.getString('api_token');
      if (token != null) {
        options.headers["Authorization"] = "Bearer " + token;
      }
          
      // set accept language
      String lang = prefs.getString("lang");
      if (lang != null) {
        options.headers["Accept-Language"] = lang;
      }

      // print requests
      print("Pre request:${options.method},${options.baseUrl}${options.path}");
      print("Pre request:${options.headers.toString()}");

      return options; //continue
    }, onResponse: (Response response) async {
      
      final int statusCode = response.statusCode;

      // handel response for some endpoints
      if (statusCode == 200 || statusCode == 201) {
        if (response.request.path == "login/" ||
            response.request.path == "signup/" ||
            response.request.path == "login-google/" ||
            response.request.path == "login-facebook/") {
          
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          final JsonDecoder _decoder = new JsonDecoder();
          final JsonEncoder _encoder = new JsonEncoder();
          final resultContainer = _decoder.convert(response.toString());

          prefs.setString("token", resultContainer["token"]);

          prefs.setString(
              "user", _encoder.convert((resultContainer["user"] as Map)));
          prefs.setBool("isLogined", true);
        }
        if (response.request.path == "profile/") {
          final SharedPreferences prefs = await SharedPreferences.getInstance();
          final JsonDecoder _decoder = new JsonDecoder();
          final JsonEncoder _encoder = new JsonEncoder();
          final resultContainer = _decoder.convert(response.toString());
          prefs.setString("user", _encoder.convert((resultContainer as Map)));
        }
      }
      
      // log response
      print("Response From:${response.request.method},${response.request.baseUrl}${response.request.path}");
      print("Response From:${response.toString()}");
      return response; // continue
    }));
    return dio;
  }
}
