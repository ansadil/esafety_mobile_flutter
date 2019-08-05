import 'package:esafety/ui/screen/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';

class CardDataWidget extends StatelessWidget {


  final Icon icon;
  final String label;
  AnimationController controller;

  VoidCallback  coleback;

  CardDataWidget(this.label, this.icon,this.coleback);

  @override
  Widget build(BuildContext context) {
          
    // var state = StateContainer.of(context).state;


    return Stack(
      children: <Widget>[
        SizedBox(
          width: 100.0,
          height: 100.0,
          child: Card(
            elevation: 5,
            margin: const EdgeInsets.all(10.0),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  icon,
                  Padding(
                    padding: EdgeInsets.only(top: 2),
                    child: Column(
                      children: <Widget>[
                        Text(
                          label,
                          textAlign: TextAlign.center,
                          maxLines: 1,
                          style: TextStyle(fontSize: 10.0),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        new Positioned.fill(
            child: new Material(
                color: Colors.transparent,
                child:Container(
                  margin: const EdgeInsets.all(10.0),
                  child:new InkWell(
                  splashColor: Colors.amber[200],
                 
                  onTap: coleback,
                ) ,) ))
      ],
    );
  }
}
