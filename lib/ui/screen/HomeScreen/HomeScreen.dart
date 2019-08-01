import 'package:flutter/material.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/Home_widget.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/Task_widget.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/Profile_widgt.dart';
import 'package:provider/provider.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/tapped.dart';

class HomeScreen extends StatefulWidget {

  @override
  HomeScreenState createState() =>HomeScreenState();
}
class HomeScreenState extends State<HomeScreen> {
  int _currentIndex = 0;
  int index=0;
    onTabTapped(int index) {
      
   setState(() {
     _currentIndex = index;
   });
 }
  final List<Widget> _children = [
   HomeWidget(),
   TaskWidget(),
   ProfileWidget()
 ];
 
  @override
  void initState() {
    super.initState();
  }

@override
  Widget build(BuildContext context) {
    final tapped = Provider.of<Tapped>(context);
    return  Scaffold(
        // appBar: AppBar(title: Text("e-Safety", style: TextStyle(color: Colors.black),),
        //   backgroundColor: Colors.white,
        //           iconTheme: IconThemeData(color: Colors.black),
        //           elevation:
        //           Theme.of(context).platform == TargetPlatform.iOS ? 0.0 : 6.0,
        // ),
        body: _children[tapped.index], 
      //   bottomNavigationBar: BottomNavigationBar(
      //    onTap: onTabTapped, 
      //    currentIndex: _currentIndex,// this will be set when a new tab is tapped
      //    items: [
      //      BottomNavigationBarItem(
      //        icon: new Icon(Icons.home),
      //        title: new Text('Home'),
      //      ),
      //      BottomNavigationBarItem(
      //        icon: new Icon(Icons.beenhere),
      //        title: new Text('Tasks'),
      //      ),
      //      BottomNavigationBarItem(
      //        icon: Icon(Icons.person),
      //        title: Text('Profile')
      //      )
      //    ],
      //  ),
      );
   

  }
}