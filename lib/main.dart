import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_training/bootscreen/bootscreen.ui.dart';
import 'package:flutter_training/homepage/homepage.dart';
import 'package:flutter_training/loginscreen/loginscreen.ui.dart';
import 'package:flutter_training/trendingpage/trendingpage.ui.dart';

void main() {
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp])
      .then((_) {
    runApp(new MyApp());
  });
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Training',
      theme: ThemeData(
        textTheme: TextTheme(
          headline: TextStyle(
            fontSize: 72.0,
            fontWeight: FontWeight.bold,
          ),
          title: TextStyle(
            fontSize: 36.0,
            fontStyle: FontStyle.italic,
          ),
          body1: TextStyle(
            fontSize: 14.0,
          ),
        ),
      ),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => new BootScreen(),
        '/LoginScreen': (BuildContext context) => new LoginScreen(),
        '/HomeScreen': (BuildContext context) => new HomePage(),
        'TrendingScreen': (BuildContext context) => new TrendingPage(),
      },
    );
  }
}
