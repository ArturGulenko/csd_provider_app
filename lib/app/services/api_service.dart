import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as https;
import 'package:http/http.dart';

import '../config/endpoints.dart';
import 'add_auth.dart';

class ApiService {
  final String _baseUrl = "https://$apiBaseUrl";
  final Map<String, String> _headersWithAuth = {
    'accept': 'application/json',
    'Content-Type': 'application/json',
    'Authorization': AzureAuthService.token!,
  };
  final Map<String, String> _headersWithoutAuth = {
    'accept': 'application/json',
    'Content-Type': 'application/json',
  };

  Future<Response> getWithAuth({required String endpoint, Map<String, String>? queryParameters} ) {
    var url = Uri.https(apiBaseUrl, endpoint, queryParameters);
    if (kDebugMode) {
      print(url);
    }
    return https.get(
      url,
      headers: _headersWithAuth,
    );
  }

  Future<Response> postWithAuth({required String endpoint, required String body}) {
    if (kDebugMode) {
      print('$_baseUrl$endpoint');
    }
    return https.post(
      Uri.parse('$_baseUrl$endpoint'),
      body: body,
      headers: _headersWithAuth,
    );
  }

  Future<Response> postWithoutAuth({required String endpoint, required String body}) {
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