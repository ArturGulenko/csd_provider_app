import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../config/endpoints.dart';
import '../api_service.dart';

Future<int> getRemaindersRequest(context, String status, String dateStart, String dateEnd) async {
  int count = 0;

  Map<String, String> queryParameters = {
    "page": '1',
    "sort": "-AppointmentDates.appointment_date",
    "limit": '2',
    "my_clients": "false",
    "statuses": status,
    "event_date:from": dateStart,
    "event_date:to": dateEnd,
  };

  try {
    var response = await ApiService.getWithAuth(
        endpoint: remainders, queryParameters: queryParameters);
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
