import 'package:flutter/material.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/CardData_widget.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  void goto(int index) {}

  @override
  Widget build(BuildContext context) {
    final container = StateContainer.of(context);
    return Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        stops: [0.6, 0.9, 0.0],
        colors: [
          // Colors are easy thanks to Flutter's Colors class.
          Colors.lime[100],
          Colors.amber[500],
          Colors.yellow[300],
        ],
      )),
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
                padding: EdgeInsets.only(top: 30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.red,
                    boxShadow: [
                      new BoxShadow(
                        color: Colors.grey[500],
                        offset: new Offset(-5.0, 5.0),
                        blurRadius: 10.0,
                      )
                    ],
                    borderRadius: new BorderRadius.only(
                        bottomRight: Radius.elliptical(10.0, 10.0),
                        topLeft: Radius.elliptical(10.0, 10.0)),
                  ),
                  child: Hero(
                    tag: 'hero',
                    child: CircleAvatar(
                      backgroundColor: Colors.transparent,
                      radius: 50.0,
                      child: Image.asset('assets/images/logo_1.png'),
                    ),
                  ),
                )),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              new CardDataWidget("SafetyEquipment", Icon(Icons.border_top,color: Colors.orange,),0),
              new CardDataWidget("Tasks", Icon(Icons.beenhere,color: Colors.orange,),1),
              new CardDataWidget("Profile", Icon(Icons.person,color: Colors.orange,),2),
            ]),
            
          ],
        ),
      ),
    );
  }
}
