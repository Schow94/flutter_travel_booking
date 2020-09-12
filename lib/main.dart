import 'package:flutter/material.dart';
import 'package:flutter_travel_booking/screens/destination_screen.dart';

import './screens/home_screen.dart';
import './screens/destination_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Travel App',
      initialRoute: '/',
      routes: {
        '/': (ctx) => HomeScreen(),
        DestinationScreen.routeName: (ctx) => DestinationScreen(),
      },
    );
  }
}
