import 'package:flutter/material.dart';
import 'package:esafety/routes.dart';
import 'package:provider/provider.dart';
import 'package:esafety/keys.dart';
import 'package:esafety/store/auth/auth.dart'; // Import the Counter
import 'package:esafety/ui/screen/HomeScreen/widgts/tapped.dart';


void main() async {
  runApp(App());
}

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<Auth>.value(value: Auth(),),
          ChangeNotifierProvider(builder: (_) => Tapped()),
      ],
      child: MaterialApp(
        
        title: 'eSafety App',
        debugShowCheckedModeBanner: false,
        navigatorKey: AppKeys.navKey,
        theme: ThemeData(
          primarySwatch: Colors.amber,
        ),
        initialRoute: '/',
        routes: routes,
      ),
    );
  }
}
