import 'package:esafety/data/models/user_data.dart';
import 'package:flutter/material.dart';
import 'package:esafety/routes.dart';
import 'package:esafety/keys.dart';
import 'package:redux/redux.dart';
import 'package:flutter_redux/flutter_redux.dart';

void main() async{
  runApp(App());
} 

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}
class _AppState extends State<App> {
  
 
 @override
  void initState(){
    super.initState();  
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'eSafety App',
      debugShowCheckedModeBanner: false,
      navigatorKey: AppKeys.navKey,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      initialRoute:'/',
      routes: routes,
      
    );
  }
}

