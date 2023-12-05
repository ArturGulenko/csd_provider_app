import 'package:flutter/material.dart';

import '../models/User.dart';

class StateProvider with ChangeNotifier {
  int _selectedScreenIndex = 0;
  User? _user;

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
}
