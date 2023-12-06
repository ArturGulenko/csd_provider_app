import 'package:flutter/foundation.dart';

import '../../config/endpoints.dart';
import '../api_service.dart';

Future<bool> getAccountRequest(context) async {
  bool isLogin = false;

  try {
    var response = await ApiService.getWithAuth(endpoint: account);
    if (response.statusCode == 200) {
      isLogin = true;
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
