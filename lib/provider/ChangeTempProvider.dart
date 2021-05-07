import 'package:flutter/material.dart';

class ChangeTempProvider extends ChangeNotifier {

  int currentTemp = 0;

  int get currentValue  => currentTemp;

  void add() {
    currentTemp++;
    notifyListeners();
  }

  void remove() {
    currentTemp--;
    notifyListeners();
  }
}