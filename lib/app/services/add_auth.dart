import 'package:aad_oauth/aad_oauth.dart';
import 'package:aad_oauth/model/config.dart';
import 'package:csd_provider_app/app/repository/global_data.dart';
import 'package:csd_provider_app/app/screens/main_screen.dart';
import 'package:csd_provider_app/app/services/jwt_parse_service.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import '../../main.dart';
import '../widgets/dialog.dart';

class AzureAuthService {
  static String? token;

  static final Config config = Config(
      tenant: 'csd.me',
      clientId: '90de704c-adff-4ed5-8bca-0e4a246a53ea',
      scope: 'openid profile offline_access',
      clientSecret: 'jfP8Q~7~FIUOIto8SVDb.C0Fe~os8b235RgbRcXH',
      redirectUri: 'https://csdtest.seriousdevelopment.com/login',
      navigatorKey: navigatorKey,
      loader: const SizedBox());
  static final AadOAuth oauth = AadOAuth(config);

  static void login(context) async {
    config.webUseRedirect = true;
    final result = await AzureAuthService.oauth.login();
    result.fold(
      (l) => showError(l.toString(), context),
      (r) {
        GlobalData.decodedToken = JWTParseService.parse(r.accessToken!);
        Navigator.pushReplacementNamed(context, MainScreen.routeName);
      } ,
    );
  }

  static Future<bool> hasCachedAccountInformation() async {
    var hasCachedAccountInformation = await oauth.hasCachedAccountInformation;
    token = await oauth.getAccessToken();
    if (kDebugMode) {
      print(token);
    }
    return hasCachedAccountInformation;
  }

  static void logout() async {
    await oauth.logout();
  }

}
