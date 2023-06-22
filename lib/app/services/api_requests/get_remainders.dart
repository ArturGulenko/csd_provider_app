import 'dart:convert';

import 'package:flutter/foundation.dart';

import '../../config/endpoints.dart';
import '../../models/Appointment.dart';
import '../api_service.dart';

Future<List<Appointment>> getRemaindersRequest(context) async {
  List<Appointment> appointments = [];
  bool isLogin = false;

  Map<String, String> queryParameters = {
    "page": '1',
    "sort": "",
    "limit": '10',
    "event_date": "2023-06-23",
  };

  try {
    var response = await ApiService()
        .getWithAuth(endpoint: remainders, queryParameters: queryParameters);
    if (kDebugMode) {
      print(response.body);
    }
    if (response.statusCode == 200) {
      appointments = await compute(parseAppointment, response.body);
    }
    if (response.statusCode == 401) {}
    if (response.statusCode != 401 && response.statusCode != 200) {}
  } on Exception catch (error) {
    if (kDebugMode) {
      print(error);
    }
  }
  print(appointments.length);
  return appointments;
}

List<Appointment> parseAppointment(String responseBody) {
  final parsed = jsonDecode(responseBody)['data'].cast<Map<String, dynamic>>();
  print("parsed");
  return parsed.map<Appointment>((json) => Appointment.fromJson(json)).toList();
}
