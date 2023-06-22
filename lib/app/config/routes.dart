import 'package:csd_provider_app/app/screens/login_screen.dart';
import 'package:flutter/material.dart';

import '../screens/main_screen.dart';

final Map<String, WidgetBuilder> routes = {
 LoginScreen.routeName: (context) => const LoginScreen(),
 MainScreen.routeName: (context) => const MainScreen(),
};