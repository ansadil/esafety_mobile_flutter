import 'package:esafety/ui/screen/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

class TaskWidget extends StatelessWidget {
 

 @override
 Widget build(BuildContext context) {
   final HomeScreen widget = context.ancestorWidgetOfExactType(HomeScreen);
                final  state = widget?.myState;
   return Container(
     decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        stops: [0.6, 0.9, 0.0],
        colors: [
          // Colors are easy thanks to Flutter's Colors class.
          Colors.greenAccent[100],
          Colors.green[500],
          Colors.lightGreen[300],
        ],
      )),
     child: Center(child: Column(children: <Widget>[
        Hero(
        tag: 'hero',
            child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 70.0,
              child: Image.asset('assets/images/logo_1.png'),
            ),
        ),
        FlatButton(onPressed: (){
          state.onTabTapped(0);
          
        },
        child: Text("back"),)
     ],),),
   );
 }
}