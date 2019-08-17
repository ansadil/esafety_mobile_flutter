import 'package:flutter/material.dart';
import 'package:esafety/ui/screen/main_ui.dart';
import 'package:esafety/ui/screen/SplashScreen/SplashScreen.dart';
import 'package:esafety/ui/screen/LoginScreen/LoginScreen.dart';
import 'package:esafety/ui/screen/establishments/establishmentsScreen.dart';
import 'package:esafety/ui/screen/establishments/building_screen.dart';
class RouterGenerator{
  static Route<dynamic> generateRoute(RouteSettings settings){
    final args = settings.arguments;
    switch (settings.name){
        case 'ROOT': return MaterialPageRoute(builder:(_)=> new SplashScreen());
        case 'LOGIN': return MaterialPageRoute(builder:(_)=> new LoginScreen());
        case 'MAIN': return MaterialPageRoute(builder:(_)=> new MainUI());
        case 'ESTABLISHMENTS': return MaterialPageRoute(builder:(_)=> new EstablishmentsScreen());
        case 'BUILDING': 
        return MaterialPageRoute(builder:(_)=> new BuildingScreen(branchBuilding: args));
        default:
        // If there is no such named route in the switch statement, e.g. /third
        return _errorRoute();
    }
  }
  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
        body: Center(
          child: Text('ERROR'),
        ),
      );
    });
  }
}
