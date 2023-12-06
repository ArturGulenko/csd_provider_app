import 'package:csd_provider_app/app/providers/state_provider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:provider/provider.dart';

class RemindersDatePicker extends StatefulWidget {
  const RemindersDatePicker({super.key});

  @override
  State<RemindersDatePicker> createState() => _RemindersDatePickerState();
}

class _RemindersDatePickerState extends State<RemindersDatePicker> {
  DateTimeRange? dateRange;

  @override
  void initState() {
    dateRange = Provider.of<StateProvider>(context, listen: false).dateRangeReminders;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () async {
        dateRange = await showDateRangePicker(
            context: context,
            firstDate: DateTime(1950),
            lastDate: DateTime(2100));

        if (dateRange != null) {
          setState(() {
            Provider.of<StateProvider>(context, listen: false).dateRangeReminders = dateRange!;
          });
        } else {}
      },
      child: Text(dateRange == null
          ? 'Select date'
          : '${DateFormat('MM-dd-yyyy').format(dateRange!.start)} - ${DateFormat('MM-dd-yyyy').format(dateRange!.end)}'),
    );
  }
}
