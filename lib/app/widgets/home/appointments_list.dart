import 'package:csd_provider_app/app/widgets/home/appointments.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import '../../providers/state_provider.dart';
import 'appoiments_date_picker.dart';

class AppointmentsList extends StatefulWidget {
  const AppointmentsList({super.key});

  @override
  State<AppointmentsList> createState() => _AppointmentsListState();
}

class _AppointmentsListState extends State<AppointmentsList> {
  @override
  Widget build(BuildContext context) {
    return Consumer<StateProvider>(builder: (_, state, __) {
      return Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: Colors.black)),
        child: Column(
          children: [
            const AppointmentsDatePicker(),
            Appointments(
              title:
                  '${DateFormat('MM-dd-yyyy').format(state.dateRangeAppointments.start)} - ${DateFormat('MM-dd-yyyy').format(state.dateRangeAppointments.end)}  Appointments',
              dateStart: state.dateRangeAppointmentsStart,
              dateEnd: state.dateRangeAppointmentsEnd,
              color: Colors.black,
              isActive: true,
            ),
            Appointments(
              title:
                  'Unconverted',
              dateStart: state.dateRangeAppointmentsStart,
              dateEnd: state.dateRangeAppointmentsEnd,
              color: Colors.blueAccent,
              isActive: true,
              isConverted: false,
            ),
            Appointments(
              title:
                  'Converted',
              dateStart: state.dateRangeAppointmentsStart,
              dateEnd: state.dateRangeAppointmentsEnd,
              color: Colors.greenAccent,
              isActive: true,
              isConverted: true,
            ),
          ],
        ),
      );
    });
  }
}
