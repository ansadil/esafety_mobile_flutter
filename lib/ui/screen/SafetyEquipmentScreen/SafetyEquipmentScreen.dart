import 'package:flutter/material.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/Home_widget.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/Task_widget.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/Profile_widgt.dart';
class SafetyEquipmentScreen extends StatefulWidget {
  @override
  _SafetyEquipmentScreenState createState() =>  _SafetyEquipmentScreenState();
}
class _SafetyEquipmentScreenState extends State<SafetyEquipmentScreen> {
  int _currentIndex = 0;

  final List<Widget> _children = [

   ProfileWidget()
 ];
  void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
  @override
  void initState() {
    super.initState();
  }

@override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(title: Text("Safety Equipment", style: TextStyle(color: Colors.black),),
        backgroundColor: Colors.amber[200],
                iconTheme: IconThemeData(color: Colors.black),
                elevation:
                Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
      ),
      body: _children[_currentIndex], 
      bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped, 
       currentIndex: _currentIndex,// this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.beenhere),
           title: new Text('Tasks'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.person),
           title: Text('Profile')
         )
       ],
     ),
    );

  }
}