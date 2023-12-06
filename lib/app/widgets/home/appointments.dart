import 'package:flutter/material.dart';

import '../../services/api_requests/get_appointments.dart';

class Appointments extends StatefulWidget {
  final String title;
  final bool isActive;
  final String dateStart;
  final String dateEnd;
  final bool? isConverted;
  final Color color;

  const Appointments(
      {super.key,
      required this.title,
      required this.isActive,
      required this.dateStart,
      required this.color,
      required this.dateEnd,
      this.isConverted});

  @override
  State<Appointments> createState() => _AppointmentsState();
}

class _AppointmentsState extends State<Appointments> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
      child: FutureBuilder<dynamic>(
          future: getAppointmentsRequest(
            context,
            widget.isActive,
            widget.dateStart,
            widget.dateEnd,
            widget.isConverted,
          ),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(
                child: SizedBox(
                    width: 15,
                    height: 15,
                    child: CircularProgressIndicator(
                      strokeWidth: 1.5,
                    )),
              );
            } else {
              if (snapshot.hasData) {
                int appointments = snapshot.data!;
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        widget.title,
                        style: TextStyle(
                          color: widget.color,
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      appointments.toString(),
                      style: const TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                );
              } else {
                return const Center(
                  child: Text('No data or error occurred'),
                );
              }
            }
          }),
    );
  }
}
