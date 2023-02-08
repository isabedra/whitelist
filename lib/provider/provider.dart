import 'package:flutter/material.dart';


class DashboardProvider extends ChangeNotifier {

  String _dashboard = 'UploadFile';
  String _fileName = '';

  String get fileName => _fileName;

  set fileName(String value) {
    _fileName = value;
    notifyListeners();
  }

  String get dashboard => _dashboard;

  set dashboard(String value) {
    _dashboard = value;
    notifyListeners();
  }
}