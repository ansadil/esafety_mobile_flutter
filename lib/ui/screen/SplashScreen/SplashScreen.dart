import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:esafety/utils/auth_service.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  
  final int splashDuration = 2;
  
  startTime() async {
   await getAuthToken();
    return Timer(
        Duration(seconds: splashDuration),
            () async {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              await checkIfAuthenticated().then( (success) {
                 print(success);
                if (success) {
                 
                  Navigator.of(context).pushReplacementNamed('/home');
                } else {
                  Navigator.of(context).pushReplacementNamed('/login');
                }
              });
        }
    );
  }
  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
            image: AssetImage('assets/images/background/material2.jpg'),
            fit: BoxFit.cover
        ) ,
      ),
      child: Column(
         children: <Widget>[
           _logo,_progress
         ]
       
      ),
    );
  }



  final _progress = CircularProgressIndicator(
          valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
        );

  final _logo =  Container(
    padding: new EdgeInsets.only(top: 200.0),
    child: Hero(
        tag: 'hero',
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 70.0,
              child: Image.asset('assets/images/logo_1.png'),
            ),
        )
    );
    
}

