
import 'package:csd_provider_app/app/widgets/home/reminders.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


class RemindersList extends StatefulWidget {
  const RemindersList({super.key});

  @override
  State<RemindersList> createState() => _RemindersListState();
}

class _RemindersListState extends State<RemindersList> {
  DateTime now = DateTime.now();
  late String formattedDate;

  @override
  void initState() {

    formattedDate = DateFormat('yyyy-MM-dd').format(now);
    print(formattedDate);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Reminders(
          title: 'Total reminders',
          status: '',
          date: '',
        ),
        Reminders(
          title: 'Total reminders pending',
          status: 'Pending',
          date: '',
        ),
        Reminders(
          title: 'Total reminders sent',
          status: 'Sent',
          date: '',
        ),
        Reminders(
          title: 'Total reminders voided',
          status: 'Voided',
          date: '',
        ),
        Reminders(
          title: 'Total reminders failed',
          status: 'Failed',
          date: '',
        ),
        Reminders(
          title: 'Total reminders overdue',
          status: 'Overdue',
          date: '',
        ),
        Reminders(
          title: 'Total reminders completed',
          status: 'Completed',
          date: '',
        ),
        Reminders(
          title: 'Today reminders',
          status: '',
          date: formattedDate,
        ),
        Reminders(
          title: 'Today reminders pending',
          status: 'Pending',
          date: formattedDate,
        ),
        Reminders(
          title: 'Today reminders sent',
          status: 'Sent',
          date: formattedDate,
        ),
        Reminders(
          title: 'Today reminders voided',
          status: 'Voided',
          date: formattedDate,
        ),
        Reminders(
          title: 'Today reminders failed',
          status: 'Failed',
          date: formattedDate,
        ),
        Reminders(
          title: 'Today reminders overdue',
          status: 'Overdue',
          date: formattedDate,
        ),
        Reminders(
          title: 'Today reminders completed',
          status: 'Completed',
          date: formattedDate,
        ),
      ],
    );
  }

}
