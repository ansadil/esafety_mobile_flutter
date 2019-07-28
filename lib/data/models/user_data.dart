import 'dart:convert';
class User {
  String createdAt;
  String updatedAt;
  String name;
  String email;
  String avatar;
  String avatarPath;
  int id;

  User({
    this.createdAt = "",
    this.updatedAt = "",
    this.id = 0,
    this.name = "",
    this.email = "",
    this.avatar = "",
    this.avatarPath = "",
  });

  User.fromJson(Map<String, dynamic> map)
      : createdAt = map['createdAt'] ?? null,
        updatedAt = map['updatedAt'] ?? null,
        id = map['id'] ?? 0,
        name = map['name'] ?? "",
        email = map['email'] ?? "",
        avatar = map['avatar'] ?? "",
        avatarPath = map['avatar_path'] ?? "";


  Map<String, dynamic> _toJson() => {
        '"createdAt"': createdAt,
        '"updatedAt"': updatedAt,
        '"id"': id,
        '"name"': '"'+name+'"',
        '"email"': '"'+email+'"',
        '"avatar"': '"'+avatar+'"',
        '"avatar_path"': '"'+avatarPath+'"'
      };

String toJson({bool parseString: false}) {
//  _serLog.fine("Start serializing");

  if (!parseString ) return _toJson().toString();

  var result = json.encode(_toJson());

  return result;
}
}
