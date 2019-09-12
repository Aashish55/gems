import 'package:flutter/material.dart';
import 'homepage.dart';
void main() =>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GEMS',
      theme: ThemeData(
        primaryColor: new Color(0xfff5f5f5)
      ),
      home: Homepage(),
    );
  }

}