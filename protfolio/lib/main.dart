import 'package:flutter/material.dart';
import './widgets/drawer_layout.dart';
import 'home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color(0xffededed),
      ),
      home: HomePage(),
    );
  }
}
