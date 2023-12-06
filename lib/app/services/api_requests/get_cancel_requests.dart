import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../config/endpoints.dart';
import '../api_service.dart';

Future<int> getCancelRequest(context, String status) async {
  int count = 0;

  Map<String, String> queryParameters = {
    "page": '1',
    "limit": '2',
    "status": status,
  };

  try {
    var response = await ApiService.getWithAuth(
        endpoint: cancelRequests, queryParameters: queryParameters);
    if (response.statusCode == 200) {
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
