import 'package:flutter/material.dart';

import '../../config/colors.dart';
import '../../services/api_requests/get_remainders.dart';

class Reminders extends StatefulWidget {
  final String title;
  final String status;
  final String date;

  const Reminders({super.key, required this.title, required this.status, required this.date});

  @override
  State<Reminders> createState() => _RemindersState();
}

class _RemindersState extends State<Reminders> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      child: FutureBuilder<dynamic>(
          future: getRemaindersRequest(context,widget.status,widget.date,),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return  const Center(
                child: SizedBox(
                    width:30,
                    height: 30,
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
                        style: const TextStyle(
                          color: kPrimaryBlueColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    Text(
                      appointments.toString(),
                      style: const TextStyle(
                        color: kPrimaryBlueColor,
                        fontSize: 16,
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
