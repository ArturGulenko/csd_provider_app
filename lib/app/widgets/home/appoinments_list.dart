import 'package:csd_provider_app/app/config/colors.dart';
import 'package:flutter/material.dart';

import '../../models/Appointment.dart';
import '../../screens/appointments_details_screen.dart';
import '../../services/api_requests/get_remainders.dart';

class AppointmentsList extends StatefulWidget {
  const AppointmentsList({super.key});

  @override
  State<AppointmentsList> createState() => _AppointmentsListState();
}

class _AppointmentsListState extends State<AppointmentsList> {
  List<Appointment> appointments = [];

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Appointment>>(
        future: getRemaindersRequest(context),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            appointments = snapshot.data!;
            return Expanded(
              child: Container(
                margin: const EdgeInsets.all(10),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(),
                  itemCount: appointments.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.pushNamed(
                            context, AppointmentDetails.routeName,
                            arguments: appointments[index]);
                      },
                      child: Card(
                        child: ListTile(
                          leading: const Icon(
                            Icons.calendar_today,
                            color: kPrimaryBlueColor,
                          ),
                          title: Text(appointments[index].client!.fullName!),
                          subtitle: Text(appointments[index]
                              .appointments!
                              .length
                              .toString()),
                        ),
                      ),
                    );
                  },
                ),
              ),
            );
          }
          if (snapshot.hasError) {
            return const Center(child: Text("Error"));
          } else {
            return const Center(child: CircularProgressIndicator());
          }
        });
  }
}
