import 'package:flutter/material.dart';

import '../models/Appointment.dart';
import '../screens/appointments_details_screen.dart';

generateRoutes(RouteSettings settings) {
  {
    if (settings.name == AppointmentDetails.routeName) {
      final Appointment appointment = settings.arguments as Appointment;
      return MaterialPageRoute(
        builder: (context) {
          return AppointmentDetails(appointment: appointment);
        },
      );
    }
    return null;
  }
}
