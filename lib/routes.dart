import 'package:flutter/material.dart';
import 'package:esafety/ui/screen/SplashScreen/SplashScreen.dart';
import 'package:esafety/ui/screen/LoginScreen/LoginScreen.dart';
import 'package:esafety/ui/screen/HomeScreen/HomeScreen.dart';
import 'package:esafety/ui/screen/SafetyEquipmentScreen/SafetyEquipmentScreen.dart';

final routes = {
  '/': (BuildContext context) => new SplashScreen(),
  '/login': (BuildContext context) => new LoginScreen(),
  '/home': (BuildContext context) => new HomeScreen(),
  '/safty_equipment': (BuildContext context) => new SafetyEquipmentScreen(),
  
};
