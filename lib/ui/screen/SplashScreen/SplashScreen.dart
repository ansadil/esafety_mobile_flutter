import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
// import 'package:esafety/utils/auth_service.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:esafety/store/auth/auth.dart'; // Import the Counter
import 'package:provider/provider.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SplashScreenState();
  }
}

class SplashScreenState extends State<SplashScreen> {
  Animation animation;
   AnimationController _controller;


  final int splashDuration = 2;
  startTime(context) async {
    
    return Timer(
        Duration(seconds: splashDuration),
            () async {
              SystemChannels.textInput.invokeMethod('TextInput.hide');
              await Provider.of<Auth>(context).checkIfAuthenticated().then( (success) {
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
    // _controller = AnimationController( vsync: null, duration: Duration(microseconds: 500));
    // animation = new CurvedAnimation( curve: Curves.easeIn);
    startTime(context);
    
  }

  @override
  Widget build(BuildContext context) {
     final auth = Provider.of<Auth>(context);
                
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

