import 'dart:ui';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:flutter/material.dart';
import 'package:esafety/utils/auth_service.dart';
import 'package:esafety/translations.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _LoginScreenState();
}

TextEditingController _emailController = TextEditingController();
TextEditingController _passwordController = TextEditingController();
final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final _logo = Hero(
      tag: 'hero',
      child: CircleAvatar(
        backgroundColor: Colors.transparent,
        radius: 70.0,
        child: Image.asset('assets/images/logo_1.png'),
      ),
    );
    final _email = new TextField(
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      autofocus: false,
      style: new TextStyle(color: Colors.black),
      decoration: InputDecoration(
        icon: new Icon(
          FontAwesomeIcons.envelope,
          size: 15.0,
        ),
        hintText: Translations.of(context).text("email"),
        hintStyle: new TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );
    final _password = TextField(
      controller: _passwordController,
      autofocus: false,
      obscureText: true,
      style: new TextStyle(color: Colors.black),
      decoration: InputDecoration(
        icon: new Icon(
          FontAwesomeIcons.lock,
          size: 15.0,
        ),
        hintText: Translations.of(context).text("password"),
        hintStyle: new TextStyle(color: Colors.grey),
        contentPadding: EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
      ),
    );

    final _loginButton = Padding(
      padding: EdgeInsets.symmetric(vertical: 16.0),
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24),
        ),
        onPressed: () async {
          //  WidgKeys.navKey.currentState.pushReplacementNamed('/');
          bool r = await getAuthFromApi(
              _emailController.text, _passwordController.text);
          if (r) {
            Navigator.of(context).pushReplacementNamed('ROOT');
          } else {
            scaffoldKey.currentState.showSnackBar(new SnackBar(
                content: new Text(
                    Translations.of(context).text("can_not_authenticate"))));
          }
        },
        padding: EdgeInsets.all(12),
        color: Color(0xFFE3E375),
        child: Text(Translations.of(context).text("login"),
            style: TextStyle(color: Colors.black)),
      ),
    );

    return Scaffold(
        appBar: null,
        key: scaffoldKey,
        body: Directionality(
          textDirection: Translations.of(context).isRtl()
              ? TextDirection.rtl
              : TextDirection.ltr,
          child: SizedBox.expand(
            child: Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [0.2, 0.1, 0.8, 0.8],
                  colors: [
                    // Colors are easy thanks to Flutter's Colors class.
                    Colors.amber[800],
                    Colors.orange[700],
                    Colors.red[600],
                    Colors.amber[400],
                  ],
                )),
                child: ListView(children: <Widget>[
                  new Center(
                    child: Column(children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 50),
                        child: _logo,
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: 20.0, bottom: 5.0, left: 20.0, right: 20.0),
                        child: Card(
                            elevation: 2.0,
                            color: Colors.yellow[50],
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                                width: double.infinity,
                                child: Column(children: <Widget>[
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 5.0,
                                        bottom: 5.0,
                                        left: 25.0,
                                        right: 25.0),
                                    child: _email,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 5.0,
                                        bottom: 5.0,
                                        left: 25.0,
                                        right: 25.0),
                                    child: _password,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: 5.0,
                                        bottom: 5.0,
                                        left: 25.0,
                                        right: 25.0),
                                    child: _loginButton,
                                  )
                                ]))),
                      ),
                    ]),
                  )
                ])),
          ),
        ));
  }
}
