import 'package:flutter/material.dart';
import 'package:esafety/routes.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:esafety/keys.dart';
import 'package:esafety/store/auth/auth.dart'; // Import the Counter
import 'package:esafety/ui/screen/HomeScreen/widgts/tapped.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:esafety/translations.dart';
import 'package:esafety/store/establishment/establishments.dart';


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
      SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiProvider(
      providers: [
        Provider<Auth>.value(value: Auth(),),
        Provider<Establishments>.value(value: Establishments(),),
        ChangeNotifierProvider(builder: (_) => Tapped()),
      ],
      child: MaterialApp(
        title: 'eSafety App',
        debugShowCheckedModeBanner: false,
        navigatorKey: AppKeys.navKey,
        theme: ThemeData(
          primarySwatch: Colors.amber,
         fontFamily: "JF Flat"
        ),
        initialRoute: 'ROOT',

        onGenerateRoute: RouterGenerator.generateRoute,
        localizationsDelegates: [
          const TranslationsDelegate(),
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: [
          const Locale('en', ''),
          const Locale('ar', ''),
        ],
      ),
    );
  }
}
