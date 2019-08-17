import 'package:esafety/translations.dart';
import 'package:esafety/ui/screen/homeScreen/widgts/custom_shape.dart';
import 'package:esafety/ui/widgts/lodaer.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:esafety/store/branch_building/branch_building.dart';

class BuildingScreen extends StatefulWidget {
  BranchBuilding branchBuilding;
  BuildingScreen({Key key, @required this.branchBuilding}) : super(key: key);
  @override
  State<StatefulWidget> createState() {
    return _BuildingState(branchBuilding);
  }
}

class _BuildingState extends State<BuildingScreen> {
  double _height;
  double _width;
  String titel;
  Lodaer _lodaer;
  ScrollController _scrollController = new ScrollController();
  BranchBuilding _branchBuilding;
  _BuildingState(this._branchBuilding);

  @override
  void initState() {
    super.initState();
    
  _scrollController.addListener((){
    print(_scrollController.positions.first.pixels.toString());
  });

  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    _lodaer = new Lodaer();
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;

    /// scroll position

    return Observer(
        builder: (_) => Scaffold(
            body: Directionality(
                textDirection: Translations.of(context).isRtl()
                    ? TextDirection.rtl
                    : TextDirection.ltr,
                child: Stack(children: <Widget>[
                  clipShape(_),
                  Container(
                    height: _height,
                    width: _height,
                    padding: EdgeInsets.only(
                        top: 70, bottom: 10, left: 10, right: 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          height: 50,
                          alignment: Alignment.center,
                          child: Text(
                            _branchBuilding.name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                            height: _height - 130,
                            width: _width,
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              
                              controller: _scrollController,
                              children: <Widget>[
                                Container(
                                  color: Colors.blue,
                                  width: _width - 30,
                                ),
                                Container(
                                  color: Colors.amberAccent,
                                  width: _width - 30,
                                ),
                                Container(
                                  width: _width - 30,
                                  child: Card(
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(50.0),
                                            topRight: Radius.circular(16.0))),
                                    child: Column(
                                      children: <Widget>[
                                        new ListTile(
                                          leading: Text("رقم المبنى:"),
                                          title:
                                              new Text("${_branchBuilding.id}"),
                                        ),
                                        new ListTile(
                                          leading: Text("اسم المبنى:"),
                                          title: new Text(
                                              "${_branchBuilding.name}"),
                                        ),
                                        new ListTile(
                                          leading: Text("عدد الطوابق:"),
                                          title: new Text(
                                              "${_branchBuilding.NumberOfFloors.toString()}"),
                                        ),
                                        new ListTile(
                                          leading: Text("وصف المبنى"),
                                          title: new Text(
                                              "${_branchBuilding.description}"),
                                        ),
                                        new ListTile(
                                          leading: Text("إحداثيات المبنى"),
                                          title: new Text(
                                              "${_branchBuilding.locationGPS ?? ''}"),
                                        ),
                                        Row(
                                          children: <Widget>[
                                            RaisedButton(
                                              onPressed: () {},
                                              child: Text("تقييم المبنى"),
                                            ),
                                            RaisedButton(
                                              onPressed: () {},
                                              child: Text("معدات السلامة"),
                                            ),
                                          ],
                                        )
                                      ],
                                    ),
                                    elevation: 5,
                                  ),
                                ),
                              ],
                            )),
                      ],
                    ),
                  ),
                  if (_branchBuilding.state == "busy") _lodaer
                ]))));
  }

  Widget clipShape(context) {
    return Stack(
      children: <Widget>[
        Opacity(
          opacity: 0.75,
          child: ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.5,
          child: ClipPath(
            clipper: CustomShapeClipper2(),
            child: Container(
              height: _height / 3.5,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Opacity(
          opacity: 0.25,
          child: ClipPath(
            clipper: CustomShapeClipper3(),
            child: Container(
              height: _height / 3,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.orange[200], Colors.pinkAccent],
                ),
              ),
            ),
          ),
        ),
        Container(
            //color: Colors.blue,
            margin: EdgeInsets.only(left: 20, right: 20, top: _height / 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Opacity(opacity: 0),
                Opacity(
                  opacity: 0,
                ),
                Opacity(
                  opacity: 0.5,
                  child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.black,
                        size: _height / 30,
                      )),
                ),
              ],
            ))
      ],
    );
  }
}
