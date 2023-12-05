import 'package:csd_provider_app/app/widgets/home/profile.dart';
import 'package:flutter/material.dart';

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
      child: Column(
        children: [
          ProfileWidget(),
          RemindersList(),
        ],
      ),
    );
  }
}
