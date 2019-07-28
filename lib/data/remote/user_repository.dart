import 'dart:async';
import 'dart:io';
import 'package:dio/dio.dart';
import 'package:path/path.dart';
import 'package:esafety/data/models/user_data.dart';
import 'package:esafety/data/network_common.dart';

class UserRepository {
  const UserRepository();

  // method => get
  // url => ....
  // query parameters => page & limit
  Future<Map> getUserList(String sorting, int page, int limit) {
    return new NetworkCommon().dio.get("users", queryParameters: {
      "page": page,
      "limit": limit,
    }).then((d) {
      var results = new NetworkCommon().decodeResp(d);

      return results;
    });
  }

  // method => patch
  // url => baseurl/profile
  // body => FormData file with strings
  Future<Map> updateProfile(String name, String phone, File photo) {
    FormData formData = new FormData.from({
      "name": name,
      "phone": phone,
    });
    if (photo != null)
      formData.add("photo", UploadFileInfo(photo, "photo.jpg"));
    return new NetworkCommon().dio.patch("profile/", data: formData).then((d) {
      print(d.toString());
      var results = new NetworkCommon().decodeResp(d);
      print(results);
      return results;
    });
  }
}
