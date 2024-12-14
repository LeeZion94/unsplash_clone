import 'package:flutter/material.dart';

class Notifier extends ChangeNotifier {
  void notify() => notifyListeners();
}
