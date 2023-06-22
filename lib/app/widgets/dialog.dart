import 'package:flutter/material.dart';

void showMessage(String text, context) {
  var alert = AlertDialog(content: Text(text), actions: <Widget>[
    TextButton(
        child: const Text('Ok'),
        onPressed: () {
          Navigator.pop(context);
        })
  ]);
  showDialog(context: context, builder: (BuildContext context) => alert);
}

void showError(dynamic ex, context) {
  showMessage(ex.toString(), context);
}
