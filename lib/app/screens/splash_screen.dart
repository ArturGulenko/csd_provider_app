import 'package:csd_provider_app/app/screens/main_screen.dart';
import 'package:csd_provider_app/app/services/add_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = '/splash';

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateUser();
  }

  Future<void> navigateUser() async {
    bool isAuthenticated = await AzureAuthService.hasCachedAccountInformation();
    if (mounted) {
      if (isAuthenticated) {
        AzureAuthService.login(context);
      } else {
        // If the function returns false, go to LoginScreen
        Navigator.pushReplacementNamed(context, LoginScreen.routeName);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/icons/logo.svg',
            ),
            const SizedBox(
              width: 50,
              height: 50,
              child: CircularProgressIndicator(),
            ),
          ],
        ),
      ),
    );
  }
}
