import 'dart:convert';
/// data : {"id":"a9fb8881-ab2e-4e1b-a8cb-8e58b2b16b6c","username":"CSD Admin","email":"admin@csd.me","first_name":"CSD","last_name":"Admin","is_confirmed":true,"created":"2023-07-31T21:41:29+00:00","modified":"2023-12-04T19:33:19+00:00","deleted":null,"role":"Admin","auth_provider":"local","tokens":[],"settings":[],"access_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjc2QiLCJhdWQiOiJjc2QtZGFzaGJvYXJkIiwiaWF0IjoxNzAxNzI5MTc2LCJleHAiOjE3MDE3Mjk3NzYsInN1YiI6IjJiMDRhYjI1YjA0ZGE2ZDIyZTMwZGUwMDY0N2Q2MmQ2OGJmMzIxZWIiLCJ1c3IiOnsiaWQiOiJhOWZiODg4MS1hYjJlLTRlMWItYThjYi04ZTU4YjJiMTZiNmMiLCJ1c2VybmFtZSI6IkNTRCBBZG1pbiIsImVtYWlsIjoiYWRtaW5AY3NkLm1lIiwiZmlyc3RfbmFtZSI6IkNTRCIsImxhc3RfbmFtZSI6IkFkbWluIiwiaXNfY29uZmlybWVkIjp0cnVlLCJjcmVhdGVkIjoiMjAyMy0wNy0zMVQyMTo0MToyOSswMDowMCIsIm1vZGlmaWVkIjoiMjAyMy0xMi0wNFQxOTozMzoxOSswMDowMCIsImRlbGV0ZWQiOm51bGwsInJvbGUiOiJBZG1pbiIsImF1dGhfcHJvdmlkZXIiOiJsb2NhbCJ9fQ.coGHhd55KXrT-TSlyTIkEXhT-vByzbnOEUsZzNfKyvs","refresh_token":"eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjc2QiLCJhdWQiOiJjc2QtZGFzaGJvYXJkIiwiaWF0IjoxNzAxNzI5MTc2LCJleHAiOjE3MDIzMzM5NzYsInN1YiI6IjBiNTY3ZDY0NDlmMTk0YjMwZmEyYzQ3N2I2NDc4Mjk1ZDg5Yjg0ZWMiLCJ1c3IiOnsiaWQiOiJhOWZiODg4MS1hYjJlLTRlMWItYThjYi04ZTU4YjJiMTZiNmMiLCJ1c2VybmFtZSI6IkNTRCBBZG1pbiIsImVtYWlsIjoiYWRtaW5AY3NkLm1lIiwiZmlyc3RfbmFtZSI6IkNTRCIsImxhc3RfbmFtZSI6IkFkbWluIiwiaXNfY29uZmlybWVkIjp0cnVlLCJjcmVhdGVkIjoiMjAyMy0wNy0zMVQyMTo0MToyOSswMDowMCIsIm1vZGlmaWVkIjoiMjAyMy0xMi0wNFQxOTozMzoxOSswMDowMCIsImRlbGV0ZWQiOm51bGwsInJvbGUiOiJBZG1pbiIsImF1dGhfcHJvdmlkZXIiOiJsb2NhbCJ9fQ.l69eua6RRHJms7rKsLlEmeb7rNOlQ1Slr7r2RTpkqz4"}

User userFromJson(String str) => User.fromJson(json.decode(str));
String userToJson(User data) => json.encode(data.toJson());
class User {
  User({
      Data? data,}){
    _data = data;
}

  User.fromJson(dynamic json) {
    _data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  Data? _data;

  Data? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (_data != null) {
      map['data'] = _data?.toJson();
    }
    return map;
  }

}

/// id : "a9fb8881-ab2e-4e1b-a8cb-8e58b2b16b6c"
/// username : "CSD Admin"
/// email : "admin@csd.me"
/// first_name : "CSD"
/// last_name : "Admin"
/// is_confirmed : true
/// created : "2023-07-31T21:41:29+00:00"
/// modified : "2023-12-04T19:33:19+00:00"
/// deleted : null
/// role : "Admin"
/// auth_provider : "local"
/// tokens : []
/// settings : []
/// access_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjc2QiLCJhdWQiOiJjc2QtZGFzaGJvYXJkIiwiaWF0IjoxNzAxNzI5MTc2LCJleHAiOjE3MDE3Mjk3NzYsInN1YiI6IjJiMDRhYjI1YjA0ZGE2ZDIyZTMwZGUwMDY0N2Q2MmQ2OGJmMzIxZWIiLCJ1c3IiOnsiaWQiOiJhOWZiODg4MS1hYjJlLTRlMWItYThjYi04ZTU4YjJiMTZiNmMiLCJ1c2VybmFtZSI6IkNTRCBBZG1pbiIsImVtYWlsIjoiYWRtaW5AY3NkLm1lIiwiZmlyc3RfbmFtZSI6IkNTRCIsImxhc3RfbmFtZSI6IkFkbWluIiwiaXNfY29uZmlybWVkIjp0cnVlLCJjcmVhdGVkIjoiMjAyMy0wNy0zMVQyMTo0MToyOSswMDowMCIsIm1vZGlmaWVkIjoiMjAyMy0xMi0wNFQxOTozMzoxOSswMDowMCIsImRlbGV0ZWQiOm51bGwsInJvbGUiOiJBZG1pbiIsImF1dGhfcHJvdmlkZXIiOiJsb2NhbCJ9fQ.coGHhd55KXrT-TSlyTIkEXhT-vByzbnOEUsZzNfKyvs"
/// refresh_token : "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJjc2QiLCJhdWQiOiJjc2QtZGFzaGJvYXJkIiwiaWF0IjoxNzAxNzI5MTc2LCJleHAiOjE3MDIzMzM5NzYsInN1YiI6IjBiNTY3ZDY0NDlmMTk0YjMwZmEyYzQ3N2I2NDc4Mjk1ZDg5Yjg0ZWMiLCJ1c3IiOnsiaWQiOiJhOWZiODg4MS1hYjJlLTRlMWItYThjYi04ZTU4YjJiMTZiNmMiLCJ1c2VybmFtZSI6IkNTRCBBZG1pbiIsImVtYWlsIjoiYWRtaW5AY3NkLm1lIiwiZmlyc3RfbmFtZSI6IkNTRCIsImxhc3RfbmFtZSI6IkFkbWluIiwiaXNfY29uZmlybWVkIjp0cnVlLCJjcmVhdGVkIjoiMjAyMy0wNy0zMVQyMTo0MToyOSswMDowMCIsIm1vZGlmaWVkIjoiMjAyMy0xMi0wNFQxOTozMzoxOSswMDowMCIsImRlbGV0ZWQiOm51bGwsInJvbGUiOiJBZG1pbiIsImF1dGhfcHJvdmlkZXIiOiJsb2NhbCJ9fQ.l69eua6RRHJms7rKsLlEmeb7rNOlQ1Slr7r2RTpkqz4"

Data dataFromJson(String str) => Data.fromJson(json.decode(str));
String dataToJson(Data data) => json.encode(data.toJson());
class Data {
  Data({
      String? id, 
      String? username, 
      String? email, 
      String? firstName, 
      String? lastName, 
      bool? isConfirmed, 
      String? created, 
      String? modified, 
      dynamic deleted, 
      String? role, 
      String? authProvider, 
      List<dynamic>? tokens, 
      List<dynamic>? settings, 
      String? accessToken, 
      String? refreshToken,}){
    _id = id;
    _username = username;
    _email = email;
    _firstName = firstName;
    _lastName = lastName;
    _isConfirmed = isConfirmed;
    _created = created;
    _modified = modified;
    _deleted = deleted;
    _role = role;
    _authProvider = authProvider;
    _tokens = tokens;
    _settings = settings;
    _accessToken = accessToken;
    _refreshToken = refreshToken;
}

  Data.fromJson(dynamic json) {
    _id = json['id'];
    _username = json['username'];
    _email = json['email'];
    _firstName = json['first_name'];
    _lastName = json['last_name'];
    _isConfirmed = json['is_confirmed'];
    _created = json['created'];
    _modified = json['modified'];
    _deleted = json['deleted'];
    _role = json['role'];
    _authProvider = json['auth_provider'];
    // if (json['tokens'] != null) {
    //   _tokens = [];
    //   json['tokens'].forEach((v) {
    //     _tokens?.add(Dynamic.fromJson(v));
    //   });
    // }
    // if (json['settings'] != null) {
    //   _settings = [];
    //   json['settings'].forEach((v) {
    //     _settings?.add(Dynamic.fromJson(v));
    //   });
    // }
    _accessToken = json['access_token'];
    _refreshToken = json['refresh_token'];
  }
  String? _id;
  String? _username;
  String? _email;
  String? _firstName;
  String? _lastName;
  bool? _isConfirmed;
  String? _created;
  String? _modified;
  dynamic _deleted;
  String? _role;
  String? _authProvider;
  List<dynamic>? _tokens;
  List<dynamic>? _settings;
  String? _accessToken;
  String? _refreshToken;

  String? get id => _id;
  String? get username => _username;
  String? get email => _email;
  String? get firstName => _firstName;
  String? get lastName => _lastName;
  bool? get isConfirmed => _isConfirmed;
  String? get created => _created;
  String? get modified => _modified;
  dynamic get deleted => _deleted;
  String? get role => _role;
  String? get authProvider => _authProvider;
  List<dynamic>? get tokens => _tokens;
  List<dynamic>? get settings => _settings;
  String? get accessToken => _accessToken;
  String? get refreshToken => _refreshToken;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['username'] = _username;
    map['email'] = _email;
    map['first_name'] = _firstName;
    map['last_name'] = _lastName;
    map['is_confirmed'] = _isConfirmed;
    map['created'] = _created;
    map['modified'] = _modified;
    map['deleted'] = _deleted;
    map['role'] = _role;
    map['auth_provider'] = _authProvider;
    if (_tokens != null) {
      map['tokens'] = _tokens?.map((v) => v.toJson()).toList();
    }
    if (_settings != null) {
      map['settings'] = _settings?.map((v) => v.toJson()).toList();
    }
    map['access_token'] = _accessToken;
    map['refresh_token'] = _refreshToken;
    return map;
  }

}