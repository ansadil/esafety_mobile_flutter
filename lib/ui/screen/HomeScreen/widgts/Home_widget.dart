import 'package:esafety/ui/screen/HomeScreen/widgts/tapped.dart';
import 'package:flutter/material.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/CardData_widget.dart';
import 'package:esafety/ui/screen/HomeScreen/HomeScreen.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatefulWidget {
  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  void goto(int index) {}

  @override
  Widget build(BuildContext context) {
    final tapped = Provider.of<Tapped>(context);
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Container(
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
          child: ListView(

            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Padding(
                     padding: EdgeInsets.only(top: 40),
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
                        ),
                  ),
                ],
              ),
              Wrap(
                alignment: WrapAlignment.center,
                children: <Widget>[
                new CardDataWidget(
                    "معدات السلامة",
                    Icon(Icons.border_top, color: Colors.orange),
                    () =>
                        {Navigator.of(context).pushNamed('SAFTY_EQUIPMENT')}),
                new CardDataWidget(
                    "المهام",
                    Icon(Icons.beenhere, color: Colors.orange),
                    () => tapped.goto(1)),
                new CardDataWidget(
                    "الملف الشخصي",
                    Icon(Icons.person, color: Colors.orange),
                    () => tapped.goto(2)),
                new CardDataWidget(
                    "المنشأت",
                    Icon(Icons.home, color: Colors.orange),
                    () => tapped.goto(2)),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
