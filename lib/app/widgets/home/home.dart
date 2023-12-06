import 'package:csd_provider_app/app/widgets/home/profile.dart';
import 'package:flutter/material.dart';

import 'appointments_list.dart';
import 'cancel_requests_list.dart';
import 'contacts_list.dart';
import 'modify_requests_list.dart';
import 'reminders_list.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            ProfileWidget(),
            ContactsList(),
            RemindersList(),
            AppointmentsList(),
            CancelRequestsList(),
            ModifyRequestsList(),
          ],
        ),
      ),
    );
  }
}
