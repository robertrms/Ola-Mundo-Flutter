import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {

  static AppController instance = AppController();
  
  bool isDartThem = false;

  changeThema() {
    isDartThem = !isDartThem;
    notifyListeners();
  }

}