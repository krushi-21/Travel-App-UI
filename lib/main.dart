import 'package:flutter/material.dart';
import 'package:travel_app_ui/screens/splashScreen.dart';

import 'screens/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Travel App',
      home: SplashScreen(),
    );
  }
}
