import 'package:flutter/material.dart';
import 'package:esafety/ui/screen/SplashScreen/SplashScreen.dart';
import 'package:esafety/ui/screen/LoginScreen/LoginScreen.dart';
import 'package:esafety/ui/screen/HomeScreen/HomeScreen.dart';


final routes = {
  '/': (BuildContext context) => new SplashScreen(),
  '/login': (BuildContext context) => new LoginScreen(),
  '/home': (BuildContext context) => new HomeScreen(),
  
};
