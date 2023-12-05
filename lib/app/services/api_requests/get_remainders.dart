import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../config/endpoints.dart';
import '../api_service.dart';

Future<int> getRemaindersRequest(context, String status, String date) async {
  int count = 0;

  Map<String, String> queryParameters = {
    "page": '1',
    "sort": "-AppointmentDates.appointment_date",
    "limit": '2',
    "my_clients": "false",
    "statuses": status,
    "event_date:from": date,
    "event_date:to": date,
  };

  try {
    var response = await ApiService
        .getWithAuth(endpoint: remainders, queryParameters: queryParameters);
    if (kDebugMode) {
      print(response.body);
    }
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

