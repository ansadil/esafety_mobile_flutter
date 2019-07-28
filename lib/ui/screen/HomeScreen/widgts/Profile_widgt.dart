import 'package:esafety/ui/screen/HomeScreen/HomeScreen.dart';
import 'package:flutter/material.dart';
import 'package:esafety/utils/auth_service.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
         final HomeScreen widget = context.ancestorWidgetOfExactType(HomeScreen);
                final  state = widget?.myState;
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
                backgroundImage:NetworkImage(auth_user?.avatarPath.toString()),
                radius: 60.0,
              ),
            ),
          ),
          Text(auth_user?.name.toString()),
          Text(auth_user?.email.toString()),
          Text(auth_user?.id.toString()),
          RaisedButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            child: Text('Logout'),
            onPressed: () async {
              removeAuth().then(
                  (r) => {Navigator.of(context).pushReplacementNamed('/')});
            },
          ),
          RaisedButton(
            child: Text("back") ,onPressed: (){
                state.onTabTapped(0);
            },
          )
        ],
      ),
    );
  }
}
