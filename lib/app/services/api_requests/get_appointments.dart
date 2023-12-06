import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../config/endpoints.dart';
import '../api_service.dart';

Future<int> getAppointmentsRequest(context, bool isActive, String dateStart,
    String dateEnd, bool? isConverted) async {
  int count = 0;

  Map<String, String> queryParameters = {
    "page": '1',
    "limit": '2',
    "scheduling_date:from": dateStart,
    "scheduling_date:to": dateEnd,
    "scheduling_is_active": isActive.toString(),
    "is_converted": isConverted != null ? isConverted.toString() : '',
  };

  try {
    var response = await ApiService.getWithAuth(
        endpoint: scheduling, queryParameters: queryParameters);
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
