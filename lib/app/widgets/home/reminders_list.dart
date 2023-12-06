import 'package:csd_provider_app/app/providers/state_provider.dart';
import 'package:csd_provider_app/app/widgets/home/reminders.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

import 'reminders_date_picker.dart';

class RemindersList extends StatefulWidget {
  const RemindersList({super.key});

  @override
  State<RemindersList> createState() => _RemindersListState();
}

class _RemindersListState extends State<RemindersList> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          decoration: BoxDecoration(
              borderRadius: const BorderRadius.all(Radius.circular(10)),
              border: Border.all(color: Colors.black)),
          child: const Column(
            children: [
              Reminders(
                title: 'Total reminders',
                status: '',
                dateStart: '',
                color: Colors.black,
                dateEnd: '',
              ),
              Reminders(
                title: 'Total reminders pending',
                status: 'Pending',
                dateStart: '',
                color: Colors.blueAccent,
                dateEnd: '',
              ),
              Reminders(
                title: 'Total reminders sent',
                status: 'Sent',
                dateStart: '',
                color: Colors.greenAccent,
                dateEnd: '',
              ),
              Reminders(
                title: 'Total reminders voided',
                status: 'Voided',
                dateStart: '',
                color: Colors.blueGrey,
                dateEnd: '',
              ),
              Reminders(
                title: 'Total reminders failed',
                status: 'Failed',
                dateStart: '',
                color: Colors.redAccent,
                dateEnd: '',
              ),
              Reminders(
                title: 'Total reminders overdue',
                status: 'Overdue',
                dateStart: '',
                color: Colors.grey,
                dateEnd: '',
              ),
              Reminders(
                title: 'Total reminders completed',
                status: 'Completed',
                dateStart: '',
                color: Colors.green,
                dateEnd: '',
              ),
            ],
          ),
        ),
        Consumer<StateProvider>(builder: (_, state, __) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(10)),
                border: Border.all(color: Colors.black)),
            child: Column(
              children: [
                const RemindersDatePicker(),
                Reminders(
                  title:
                      '${DateFormat('MM-dd-yyyy').format(state.dateRangeReminders.start)} - ${DateFormat('MM-dd-yyyy').format(state.dateRangeReminders.end)}  reminders',
                  status: '',
                  dateStart: state.dateRangeRemindersStart,
                  dateEnd: state.dateRangeRemindersEnd,
                  color: Colors.black,
                ),
                Reminders(
                  title: 'Reminders pending',
                  status: 'Pending',
                  dateStart: state.dateRangeRemindersStart,
                  dateEnd: state.dateRangeRemindersEnd,
                  color: Colors.blueAccent,
                ),
                Reminders(
                  title: 'Reminders sent',
                  status: 'Sent',
                  dateStart: state.dateRangeRemindersStart,
                  dateEnd: state.dateRangeRemindersEnd,
                  color: Colors.greenAccent,
                ),
                Reminders(
                  title: 'Reminders voided',
                  status: 'Voided',
                  dateStart: state.dateRangeRemindersStart,
                  dateEnd: state.dateRangeRemindersEnd,
                  color: Colors.blueGrey,
                ),
                Reminders(
                  title: 'Reminders failed',
                  status: 'Failed',
                  dateStart: state.dateRangeRemindersStart,
                  dateEnd: state.dateRangeRemindersEnd,
                  color: Colors.redAccent,
                ),
                Reminders(
                  title: 'Reminders overdue',
                  status: 'Overdue',
                  dateStart: state.dateRangeRemindersStart,
                  dateEnd: state.dateRangeRemindersEnd,
                  color: Colors.grey,
                ),
                Reminders(
                  title: 'Reminders completed',
                  status: 'Completed',
                  dateStart: state.dateRangeRemindersStart,
                  dateEnd: state.dateRangeRemindersEnd,
                  color: Colors.green,
                ),
              ],
            ),
          );
        })
      ],
    );
  }
}
