import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../models/User.dart';

class StateProvider with ChangeNotifier {
  int _selectedScreenIndex = 0;
  User? _user;
  DateTimeRange _dateRangeReminders = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now());

  DateTimeRange _dateRangeAppointments = DateTimeRange(
      start: DateTime.now(),
      end: DateTime.now());


  int get selectedScreenIndex => _selectedScreenIndex;

  set selectedScreenIndex(int index) {
    _selectedScreenIndex = index;
    notifyListeners();
  }

  User? get user => _user;

  set user(User? user) {
    _user = user;
    notifyListeners();
  }

  DateTimeRange get dateRangeReminders => _dateRangeReminders;

  set dateRangeReminders(DateTimeRange dateRange) {
    _dateRangeReminders = dateRange;
    notifyListeners();
  }

  get dateRangeRemindersStart => DateFormat('yyyy-MM-dd').format(dateRangeReminders.start);
  get dateRangeRemindersEnd => DateFormat('yyyy-MM-dd').format(dateRangeReminders.end);

  DateTimeRange get dateRangeAppointments => _dateRangeAppointments;

  set dateRangeAppointments(DateTimeRange dateRange) {
    _dateRangeAppointments = dateRange;
    notifyListeners();
  }

  get dateRangeAppointmentsStart => DateFormat('yyyy-MM-dd').format(dateRangeAppointments.start);
  get dateRangeAppointmentsEnd => DateFormat('yyyy-MM-dd').format(dateRangeAppointments.end);
}
