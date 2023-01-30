import 'package:flutter/material.dart';


class DashboardProvider extends ChangeNotifier {

  String _dashboard = 'UploadFile';

  String get dashboard => _dashboard;

  set dashboard(String value) {
    _dashboard = value;
    notifyListeners();
  }
}