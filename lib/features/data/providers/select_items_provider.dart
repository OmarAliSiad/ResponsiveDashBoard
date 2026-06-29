import 'package:flutter/material.dart';

class ProviderSelectItems extends ChangeNotifier {
  int activeIndex = 0;

  void updateIndex(int newIndex) {
    if (activeIndex != newIndex) {
      activeIndex = newIndex;
      notifyListeners();
    }
  }
}
