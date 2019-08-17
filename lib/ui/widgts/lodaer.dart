import 'package:flare_flutter/flare_actor.dart';
import 'package:flutter/material.dart';

class Lodaer extends StatelessWidget{
  double _height, _width;
  
  // Lodaer(this._height);
  @override
  Widget build(BuildContext context) {
     _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Container(
                      height: _height,
                      child: Stack(
                        alignment: Alignment.center,
                        children: <Widget>[
                          Opacity(
                            opacity: 0.7,
                            child: Container(
                              color: Colors.black87,
                            ),
                          ),
                          Container(
                              height: 120,
                              child: FlareActor(
                                "assets/animations/load1.flr",
                                alignment: Alignment.center,
                                fit: BoxFit.contain,
                                animation: "Loading",
                              )),
                        ],
                      ),
                    );
  }
 
  
}
 