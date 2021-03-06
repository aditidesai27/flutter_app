import 'package:flutter/material.dart';
import 'package:flutter_app/Splashscreen.dart';

void main() => runApp(Main());

class Main extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Movify',
      theme: ThemeData(
          primarySwatch: Colors.blue, scaffoldBackgroundColor: Colors.black),
      home: Splashscreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
