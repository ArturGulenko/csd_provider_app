import 'package:csd_provider_app/app/config/colors.dart';
import 'package:csd_provider_app/app/models/Appointment.dart';
import 'package:flutter/material.dart';

class AppointmentDetails extends StatelessWidget {
  static const String routeName = '/appointment_details';
  final Appointment appointment;

  const AppointmentDetails({super.key, required this.appointment});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackgroundColor,
      appBar: AppBar(
        title: Text(appointment.id!),
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("appointment_date ${appointment.appointmentDate!}"),
            Text("status ${appointment.status!}"),
            Text("client ${appointment.client!.fullName!}"),
            Text("provider ${appointment.appointments!.first.provider!.fullName!}"),
          ],
        ),
      )
    );
  }
}
