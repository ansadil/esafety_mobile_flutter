import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
class Tapped with ChangeNotifier{
 int _index=0;
 int get index => _index;

   goto(int index) {
   _index=index;
    notifyListeners();
  }
}