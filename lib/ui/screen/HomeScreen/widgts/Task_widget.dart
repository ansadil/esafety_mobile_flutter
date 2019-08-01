import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/tapped.dart';
class TaskWidget extends StatelessWidget {
 

 @override
 Widget build(BuildContext context) {
              final tapped = Provider.of<Tapped>(context);
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
         
          tapped.goto(0);
        },
        child: Text("back"),)
     ],),),
   );
 }
}