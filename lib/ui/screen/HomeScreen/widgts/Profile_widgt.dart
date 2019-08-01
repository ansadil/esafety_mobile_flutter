import 'package:esafety/ui/screen/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:esafety/store/auth/auth.dart'; // Import the Counter
import 'package:provider/provider.dart';
import 'package:esafety/ui/screen/HomeScreen/widgts/tapped.dart';


class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

                 final auth = Provider.of<Auth>(context);
                 final tapped = Provider.of<Tapped>(context);
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
          gradient: LinearGradient(
        begin: Alignment.topCenter,
        end: Alignment.bottomRight,
        stops: [0.6, 0.9, 0.0],
        colors: [
          // Colors are easy thanks to Flutter's Colors class.
          Colors.cyanAccent[100],
          Colors.blue[500],
          Colors.cyan[300],
        ],
      )),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 50),
            child: Hero(
              tag: 'hero',
              child: CircleAvatar(
                backgroundColor: Colors.transparent,
                backgroundImage:NetworkImage(auth.user?.avatarPath.toString()),
                radius: 60.0,
              ),
            ),
          ),
          Text(auth.user?.name.toString()),
          Text(auth.user?.email.toString()),
          Text(auth.user?.id.toString()),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text('Logout'),
            onPressed: () async {
              auth.removeAuth().then(
                  (r) => {Navigator.of(context).pushReplacementNamed('/')});
            },
          ),
          RaisedButton(
            child: Text("back") ,onPressed: (){
                
                  tapped.goto(0);
            },
          ),
          Observer(builder: (_) =>Text("${auth.token}")),
          RaisedButton(onPressed: (){
            auth.getAuthToken();
          },child: Text("get auth"),)
          
        ],
      ),
    );
  }
}
