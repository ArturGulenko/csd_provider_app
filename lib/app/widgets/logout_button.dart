import 'package:csd_provider_app/app/screens/login_screen.dart';
import 'package:csd_provider_app/app/services/add_auth.dart';
import 'package:flutter/cupertino.dart';

Widget logoutButton(BuildContext context) {
  return CupertinoButton(
    child: const Text('Logout'),
    onPressed: () {
      AzureAuthService.logout();
      Navigator.pushNamedAndRemoveUntil(
          context, LoginScreen.routeName, (route) => false);
    },
  );
}
