import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:esafety/store/safety_equipment/safety_equipment.dart';

final safety_equipment = SafetyEquipment(); // Instantiate the store

class SafetyEquipmentScreen extends StatefulWidget {
  @override
  _SafetyEquipmentScreenState createState() => _SafetyEquipmentScreenState();
}

class _SafetyEquipmentScreenState extends State<SafetyEquipmentScreen> {
  @override
  void initState() {
    super.initState();
    safety_equipment.getDataFromApi("");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Safety Equipment",
            style: TextStyle(color: Colors.black),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('Backe'),
              onPressed: () {
                Navigator.of(context).pushReplacementNamed('/home');
              },
            )
          ],
          backgroundColor: Colors.amber[200],
          iconTheme: IconThemeData(color: Colors.black),
          elevation:
              Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
        ),
        body: Container(
          child: Column(
            children: <Widget>[
              FlatButton(child: Text("Get"),onPressed: (){
                safety_equipment.getDataFromApi(20);
              },),
              ListView.builder(
                itemCount: safety_equipment.data==null? 0:safety_equipment.data.length,
                itemBuilder: (BuildContext context,int index){
                  return Container(child: Center(child: Column(crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    
                  ],),),);
                },
              )
             
            ],
          ),
        ));
  }
}
