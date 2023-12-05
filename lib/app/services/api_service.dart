import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';

import '../config/endpoints.dart';

class ApiService {
  static final String _baseUrl = "https://$apiBaseUrl";
  static String token='';
  static final Map<String, String> _headersWithAuth = {
    'accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': token,
  };
  static final Map<String, String> _headersWithoutAuth = {
    'accept': 'application/json',
    'Content-Type': 'application/json',
  };

  static void setToken(String token) {
    _headersWithAuth['Authorization'] = token;
  }

  static Future<Response> getWithAuth({required String endpoint, Map<String, String>? queryParameters} ) {
    var url = Uri.https(apiBaseUrl, endpoint, queryParameters);
    if (kDebugMode) {
      print(url);
    }
    return https.get(
      url,
      headers: _headersWithAuth,
    );
  }

  static Future<Response> postWithAuth({required String endpoint, required String body}) {
    if (kDebugMode) {
      print('$_baseUrl$endpoint');
    }
    return https.post(
      Uri.parse('$_baseUrl$endpoint'),
      body: body,
      headers: _headersWithAuth,
    );
  }

  static Future<Response> postWithoutAuth({required String endpoint, required String body}) {
    if (kDebugMode) {
      print('$_baseUrl$endpoint');
    }
    return https.post(
      Uri.parse('$_baseUrl$endpoint'),
      body: body,
      headers: _headersWithoutAuth,
    );
  }

}