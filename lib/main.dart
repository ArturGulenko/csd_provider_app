import 'package:csd_provider_app/app/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app/config/generated_routes.dart';
import 'app/config/routes.dart';
import 'app/config/themes.dart';
import 'app/models/Appointment.dart';
import 'app/providers/state_provider.dart';
import 'app/screens/appointments_details_screen.dart';
import 'generated/l10n.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  S.load(const Locale('en'));
  runApp(const MyApp());
}

final navigatorKey = GlobalKey<NavigatorState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => StateProvider()),
        ],
        child: MaterialApp(
          title: 'SCD Provider App',
          theme: theme(),
          home: const SplashScreen(),
          onGenerateRoute: (settings) {
            if (settings.name == AppointmentDetails.routeName) {
              final Appointment appointment = settings.arguments as Appointment;
              return MaterialPageRoute(
                builder: (context) {
                  return AppointmentDetails(appointment: appointment);
                },
              );
            }
            return null;
          },
          routes: routes,
          navigatorKey: navigatorKey,
        ));
  }
}
