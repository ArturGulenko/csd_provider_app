import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../config/endpoints.dart';
import '../api_service.dart';

Future<int> getSchedulersRequest(context) async {
  int count = 0;

  Map<String, String> queryParameters = {
    "page": '1',
    "limit": '2',
  };

  try {
    var response = await ApiService.getWithAuth(
        endpoint: schedulers, queryParameters: queryParameters);

    if (response.statusCode == 200) {
      print(jsonDecode(response.body)['pagination']['count']);
      count = jsonDecode(response.body)['pagination']['count'];
    }
    if (response.statusCode == 401) {}
    if (response.statusCode != 401 && response.statusCode != 200) {}
  } on Exception catch (error) {
    if (kDebugMode) {
      print(error);
    }
  }
  return count;
}
