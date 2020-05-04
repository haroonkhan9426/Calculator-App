import 'package:flutter/material.dart';
import 'package:gdgsession2/screens/calculator-screen.dart';
import 'package:gdgsession2/screens/splash-screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CalculatorScreen(),
    );
  }
}

