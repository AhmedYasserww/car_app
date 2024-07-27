import 'package:car_app/screens/car_detailes.dart';
import 'package:car_app/screens/car_screen.dart';
import 'package:car_app/screens/logo_screen.dart';
import 'package:flutter/material.dart';

import 'screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: HomeScreen(),
      routes: {
        "logoscreen":(context) =>LogoScreen(),
        "carview":(context)=>CarListView(),
        "cardetailes":(context)=>CarDetailes(),
      },
    );
  }
}

