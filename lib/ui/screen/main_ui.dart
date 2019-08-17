import 'package:esafety/translations.dart';
import 'package:esafety/ui/screen/SafetyEquipmentScreen/SafetyEquipmentScreen.dart';
import 'package:esafety/ui/widgts/custom_shape.dart';
import 'package:esafety/ui/widgts/lodaer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:esafety/store/auth/auth.dart'; // Import the Counter
import 'package:provider/provider.dart';
import 'package:esafety/store/qr_scan/qr_scan.dart';
import 'package:esafety/ui/widgts/expand_list.dart';
import 'package:esafety/store/establishment/establishments.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class MainUI extends StatefulWidget {
  @override
  _MainUIState createState() => _MainUIState();
}

class _MainUIState extends State<MainUI> {
  var scaffoldKey = GlobalKey<ScaffoldState>();
  bool isExpanded = false;
  double _height;
  double _width;
  Auth _auth;
  QrScan qr;

  Lodaer _lodaer;
  Establishments _establishments;

  @override
  void initState() {
    super.initState();
  }

  void _expand() {
    setState(() {
      isExpanded ? isExpanded = false : isExpanded = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    qr = new QrScan();
    _lodaer = new Lodaer();
    _auth = Provider.of<Auth>(context);
    _establishments = Provider.of<Establishments>(context);
    if (_establishments?.state != "done") {
      _establishments.getDataFromApi();
    }
    _auth.getAuthUser();
    _height = MediaQuery.of(context).size.height;
    _width = MediaQuery.of(context).size.width;
    return Observer(
          builder: (_) =>  Scaffold(
          bottomNavigationBar:  _establishments?.state != "busy"?_bottomNavBar():null,
          key: scaffoldKey,
          drawer: Translations.of(context).isRtl() ? null : _drawer(),
          endDrawer: Translations.of(context).isRtl() ? _drawer() : null,
          floatingActionButton:_establishments?.state != "busy"? FloatingActionButton.extended(
            elevation: 3,
            onPressed: () {
              qr.scan(context).then((code) {
                if (code.isNotEmpty) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => SafetyEquipmentScreen(code)));
                }
              });
            },
            backgroundColor: Colors.orange[200],
            icon: Image.asset(
              "assets/images/qr-code-scan.png",
              width: 25,
            ),
            label: Text(
              Translations.of(context).text('scan_qr'),
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
            ),
          ):null,
          floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
          body: Directionality(
              textDirection: Translations.of(context).isRtl()
                  ? TextDirection.rtl
                  : TextDirection.ltr,
              child: Stack(
                children: <Widget>[
                  Container(
                    height: _height,
                    width: _width,
                    child: SingleChildScrollView(
                        child: Column(
                      children: <Widget>[
                        clipShape(),
                        Container(
                          margin: EdgeInsets.only(left: 30, right: 30, top: 20),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              GestureDetector(
                                  onTap: _expand,
                                  child: Text(
                                    isExpanded
                                        ? Translations.of(context)
                                            .text('show_less')
                                        : Translations.of(context)
                                            .text('show_all'),
                                    style: TextStyle(
                                      color: Colors.orange[200],
                                    ),
                                  )),
                              //IconButton(icon: isExpanded? Icon(Icons.arrow_drop_up, color: Colors.orange[200],) : Icon(Icons.arrow_drop_down, color: Colors.orange[200],), onPressed: _expand)
                            ],
                          ),
                        ),
                        expandList(isExpanded),
                        Divider(),
                      ],
                    )),
                  ),
                  if (_establishments?.state == "busy") _lodaer
                ],
              ),
            ),
          ),
    );
  }

  Widget _bottomNavBar() {
    return BottomAppBar(
      notchMargin: 4,
      shape: AutomaticNotchedShape(RoundedRectangleBorder(),
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      child: Container(
        margin: EdgeInsets.only(left: 50, right: 50),
        decoration: BoxDecoration(
            shape: BoxShape.rectangle, borderRadius: BorderRadius.circular(30)),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            IconButton(
              icon: Icon(Icons.border_top),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.beenhere),
              onPressed: () {},
            )
          ],
        ),
      ),
    );
  }

  Widget _drawer() {
    return Directionality(
      textDirection: Translations.of(context).isRtl()
          ? TextDirection.rtl
          : TextDirection.ltr,
      child: Drawer(
        child: Column(
          children: <Widget>[
            Opacity(
              opacity: 0.75,
              child: Container(
                height: _height / 6,
                padding: EdgeInsets.only(top: _height / 20),
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [Colors.orange[200], Colors.pinkAccent],
                  ),
                ),
                child: ListTile(
                  leading: CircleAvatar(
                    backgroundImage:
                        NetworkImage(_auth.user?.avatarPath.toString()),
                    radius: 30,
                    backgroundColor: Colors.white,
                  ),
                  title: Text(_auth.user?.name.toString()),
                  subtitle: Text(
                    _auth.user?.email.toString(),
                    style: TextStyle(fontSize: 13),
                  ),
                  // trailing: Icon(
                  //   Icons.arrow_forward_ios,
                  //   color: Colors.black,
                  // ),
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.account_box),
              title: Text(Translations.of(context).text("user_profile")),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text(Translations.of(context).text("setting")),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text(Translations.of(context).text("signoff")),
              onTap: () {
                _auth.removeAuth().then(
                    (r) => {Navigator.of(context).pushReplacementNamed('ROOT')});
              },
            ),
          ],
        ),
      ),
    );
  }

  Widget clipShape() {
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
          margin: EdgeInsets.only(left: 40, right: 40, top: _height / 3.75),
          child: Material(
            borderRadius: BorderRadius.circular(30.0),
            elevation: 8,
            child: Container(
              child: TextFormField(
                cursorColor: Colors.orange[200],
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon:
                      Icon(Icons.search, color: Colors.orange[200], size: 30),
                  hintText:
                      Translations.of(context).text("search_input_hint_text"),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none),
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
                Opacity(
                  opacity: 0.5,
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: GestureDetector(
                        onTap: () {
                          Translations.of(context).isRtl()
                              ? scaffoldKey.currentState.openEndDrawer()
                              : scaffoldKey.currentState.openDrawer();
                        },
                        child: Image.asset(
                          'assets/images/menubutton.png',
                          height: _height / 40,
                        )),
                  ),
                ),
                Flexible(
                  child: Container(
                    height: _height / 20,
                    padding: EdgeInsets.only(left: 10, right: 10),
                    decoration: BoxDecoration(
                      color: Colors.black12,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(30),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        SizedBox(
                          width: 10,
                        ),
                        Flexible(
                            child: Text('e-Safety',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: _height / 45),
                                // overflow: TextOverflow.fade,
                                softWrap: false)),
                      ],
                    ),
                  ),
                ),
                Opacity(
                  opacity: 0.5,
                  child: GestureDetector(
                      onTap: () {},
                      child: Icon(
                        Icons.notifications,
                        color: Colors.black,
                        size: _height / 30,
                      )),
                ),
              ],
            )),
      ],
    );
  }
}
