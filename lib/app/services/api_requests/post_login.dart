import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../config/endpoints.dart';
import '../../models/User.dart';
import '../../providers/state_provider.dart';
import '../../screens/main_screen.dart';
import '../api_service.dart';
import '../shared_pref.dart';

Future<bool> postLogin(context) async {
  bool isLogin = false;
  var jsonRequest = {
    "username": "admin@csd.me",
    "password": "79ju\$7E3yB3D",
  };
  try {
    var response = await ApiService.postWithoutAuth(endpoint: login, body: jsonEncode(jsonRequest));
    var jsonResponse = json.decode(response.body);
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      MySharedPreferences.instance
          .setStringValue("accessToken", jsonResponse["data"]["access_token"]);
      ApiService.setToken(jsonResponse["data"]["access_token"]);
      isLogin = true;
      Provider.of<StateProvider>(context, listen: false).user = User.fromJson(jsonResponse);
      Navigator.pushReplacementNamed(context, MainScreen.routeName);
    }
    if (response.statusCode == 401) {}
    if (response.statusCode != 401 && response.statusCode != 200) {}
  } on Exception catch (error) {
    if (kDebugMode) {
      print(error);
    }
  }
  return isLogin;
}
